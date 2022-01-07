; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap_dns.c_ypldap_dns.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap_dns.c_ypldap_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32 }
%struct.event = type { i32 }
%struct.env = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__, %struct.env* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"cannot fork\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dns engine\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"can't drop privileges\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@dns_sig_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@dns_dispatch_imsg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ypldap_dns(i32* %0, %struct.passwd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.event, align 4
  %8 = alloca %struct.event, align 4
  %9 = alloca %struct.event, align 4
  %10 = alloca %struct.env, align 8
  store i32* %0, i32** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  %11 = call i32 (...) @fork()
  store i32 %11, i32* %6, align 4
  switch i32 %11, label %15 [
    i32 -1, label %12
    i32 0, label %14
  ]

12:                                               ; preds = %2
  %13 = call i32 @fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %17

14:                                               ; preds = %2
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %115

17:                                               ; preds = %14, %12
  %18 = call i32 @setproctitle(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @close(i32 %21)
  %23 = load %struct.passwd*, %struct.passwd** %5, align 8
  %24 = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 1
  %25 = call i64 @setgroups(i32 1, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %17
  %28 = load %struct.passwd*, %struct.passwd** %5, align 8
  %29 = getelementptr inbounds %struct.passwd, %struct.passwd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.passwd*, %struct.passwd** %5, align 8
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.passwd*, %struct.passwd** %5, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @setresgid(i32 %30, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %27
  %40 = load %struct.passwd*, %struct.passwd** %5, align 8
  %41 = getelementptr inbounds %struct.passwd, %struct.passwd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.passwd*, %struct.passwd** %5, align 8
  %44 = getelementptr inbounds %struct.passwd, %struct.passwd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.passwd*, %struct.passwd** %5, align 8
  %47 = getelementptr inbounds %struct.passwd, %struct.passwd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @setresuid(i32 %42, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39, %27, %17
  %52 = call i32 @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %39
  %54 = call i32 (...) @endservent()
  %55 = call i32 (...) @event_init()
  %56 = load i32, i32* @SIGINT, align 4
  %57 = load i32, i32* @dns_sig_handler, align 4
  %58 = call i32 @signal_set(%struct.event* %7, i32 %56, i32 %57, i32* null)
  %59 = load i32, i32* @SIGTERM, align 4
  %60 = load i32, i32* @dns_sig_handler, align 4
  %61 = call i32 @signal_set(%struct.event* %8, i32 %59, i32 %60, i32* null)
  %62 = load i32, i32* @SIGHUP, align 4
  %63 = load i32, i32* @dns_sig_handler, align 4
  %64 = call i32 @signal_set(%struct.event* %9, i32 %62, i32 %63, i32* null)
  %65 = call i32 @signal_add(%struct.event* %7, i32* null)
  %66 = call i32 @signal_add(%struct.event* %8, i32* null)
  %67 = call i32 @signal_add(%struct.event* %9, i32* null)
  %68 = call %struct.TYPE_4__* @calloc(i32 1, i32 24)
  %69 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %69, align 8
  %70 = icmp eq %struct.TYPE_4__* %68, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = call i32 @fatal(i8* null)
  br label %73

73:                                               ; preds = %71, %53
  %74 = load i32, i32* @EV_READ, align 4
  %75 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  %78 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store %struct.env* %10, %struct.env** %80, align 8
  %81 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @imsg_init(%struct.TYPE_3__* %83, i32 %86)
  %88 = load i32, i32* @dns_dispatch_imsg, align 4
  %89 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @event_set(i32* %94, i32 %99, i32 %103, i32 %107, %struct.env* %10)
  %109 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = call i32 @event_add(i32* %111, i32* null)
  %113 = call i32 (...) @event_dispatch()
  %114 = call i32 (...) @dns_shutdown()
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %73, %15
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @setproctitle(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @setgroups(i32, i32*) #1

declare dso_local i64 @setresgid(i32, i32, i32) #1

declare dso_local i64 @setresuid(i32, i32, i32) #1

declare dso_local i32 @endservent(...) #1

declare dso_local i32 @event_init(...) #1

declare dso_local i32 @signal_set(%struct.event*, i32, i32, i32*) #1

declare dso_local i32 @signal_add(%struct.event*, i32*) #1

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i32 @imsg_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, %struct.env*) #1

declare dso_local i32 @event_add(i32*, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @dns_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

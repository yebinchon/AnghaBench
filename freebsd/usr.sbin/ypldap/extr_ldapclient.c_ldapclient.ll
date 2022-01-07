; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ldapclient.c_ldapclient.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ldapclient.c_ldapclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32, i32 }
%struct.event = type { i32 }
%struct.env = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, %struct.TYPE_6__, %struct.env* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, %struct.TYPE_6__, %struct.env* }

@.str = private unnamed_addr constant [12 x i8] c"cannot fork\00", align 1
@YPLDAP_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ldap client\00", align 1
@PROC_CLIENT = common dso_local global i32 0, align 4
@ypldap_process = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"cannot drop privileges\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@client_sig_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i8* null, align 8
@client_dispatch_parent = common dso_local global i32 0, align 4
@client_dispatch_dns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldapclient(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.event, align 4
  %9 = alloca %struct.event, align 4
  %10 = alloca %struct.env, align 8
  store i32* %0, i32** %3, align 8
  %11 = call i32 (...) @fork()
  store i32 %11, i32* %4, align 4
  switch i32 %11, label %15 [
    i32 -1, label %12
    i32 0, label %14
  ]

12:                                               ; preds = %1
  %13 = call i32 @fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %17

14:                                               ; preds = %1
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %197

17:                                               ; preds = %14, %12
  %18 = call i32 @memset(%struct.env* %10, i32 0, i32 24)
  %19 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 2
  %20 = call i32 @TAILQ_INIT(i32* %19)
  %21 = load i32, i32* @YPLDAP_USER, align 4
  %22 = call %struct.passwd* @getpwnam(i32 %21)
  store %struct.passwd* %22, %struct.passwd** %7, align 8
  %23 = icmp eq %struct.passwd* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32, i32* @AF_UNIX, align 4
  %28 = load i32, i32* @SOCK_STREAM, align 4
  %29 = load i32, i32* @PF_UNSPEC, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %31 = call i32 @socketpair(i32 %27, i32 %28, i32 %29, i32* %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @fatal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %26
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %37 = load %struct.passwd*, %struct.passwd** %7, align 8
  %38 = call i32 @ypldap_dns(i32* %36, %struct.passwd* %37)
  store i32 %38, i32* %5, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @close(i32 %40)
  %42 = load %struct.passwd*, %struct.passwd** %7, align 8
  %43 = getelementptr inbounds %struct.passwd, %struct.passwd* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @chroot(i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = call i32 @fatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %35
  %50 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @fatal(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = call i32 @setproctitle(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %56 = load i32, i32* @PROC_CLIENT, align 4
  store i32 %56, i32* @ypldap_process, align 4
  %57 = load %struct.passwd*, %struct.passwd** %7, align 8
  %58 = getelementptr inbounds %struct.passwd, %struct.passwd* %57, i32 0, i32 1
  %59 = call i64 @setgroups(i32 1, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %54
  %62 = load %struct.passwd*, %struct.passwd** %7, align 8
  %63 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.passwd*, %struct.passwd** %7, align 8
  %66 = getelementptr inbounds %struct.passwd, %struct.passwd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.passwd*, %struct.passwd** %7, align 8
  %69 = getelementptr inbounds %struct.passwd, %struct.passwd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @setresgid(i32 %64, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %61
  %74 = load %struct.passwd*, %struct.passwd** %7, align 8
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.passwd*, %struct.passwd** %7, align 8
  %78 = getelementptr inbounds %struct.passwd, %struct.passwd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.passwd*, %struct.passwd** %7, align 8
  %81 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @setresuid(i32 %76, i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %73, %61, %54
  %86 = call i32 @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %73
  %88 = call i32 (...) @event_init()
  %89 = load i32, i32* @SIGPIPE, align 4
  %90 = load i32, i32* @SIG_IGN, align 4
  %91 = call i32 @signal(i32 %89, i32 %90)
  %92 = load i32, i32* @SIGINT, align 4
  %93 = load i32, i32* @client_sig_handler, align 4
  %94 = call i32 @signal_set(%struct.event* %8, i32 %92, i32 %93, i32* null)
  %95 = load i32, i32* @SIGTERM, align 4
  %96 = load i32, i32* @client_sig_handler, align 4
  %97 = call i32 @signal_set(%struct.event* %9, i32 %95, i32 %96, i32* null)
  %98 = call i32 @signal_add(%struct.event* %8, i32* null)
  %99 = call i32 @signal_add(%struct.event* %9, i32* null)
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @close(i32 %102)
  %104 = call i8* @calloc(i32 1, i32 32)
  %105 = bitcast i8* %104 to %struct.TYPE_4__*
  %106 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 1
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %106, align 8
  %107 = icmp eq %struct.TYPE_4__* %105, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %87
  %109 = call i32 @fatal(i8* null)
  br label %110

110:                                              ; preds = %108, %87
  %111 = call i8* @calloc(i32 1, i32 32)
  %112 = bitcast i8* %111 to %struct.TYPE_5__*
  %113 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  store %struct.TYPE_5__* %112, %struct.TYPE_5__** %113, align 8
  %114 = icmp eq %struct.TYPE_5__* %112, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 @fatal(i8* null)
  br label %117

117:                                              ; preds = %115, %110
  %118 = load i8*, i8** @EV_READ, align 8
  %119 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  store i8* %118, i8** %121, align 8
  %122 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  store %struct.env* %10, %struct.env** %124, align 8
  %125 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  %128 = load i32*, i32** %3, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @imsg_init(%struct.TYPE_6__* %127, i32 %130)
  %132 = load i32, i32* @client_dispatch_parent, align 4
  %133 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  %136 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 1
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @event_set(i32* %138, i32 %143, i8* %147, i32 %151, %struct.env* %10)
  %153 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = call i32 @event_add(i32* %155, i32* null)
  %157 = load i8*, i8** @EV_READ, align 8
  %158 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  store i8* %157, i8** %160, align 8
  %161 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 4
  store %struct.env* %10, %struct.env** %163, align 8
  %164 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @imsg_init(%struct.TYPE_6__* %166, i32 %168)
  %170 = load i32, i32* @client_dispatch_dns, align 4
  %171 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  %174 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @event_set(i32* %176, i32 %181, i8* %185, i32 %189, %struct.env* %10)
  %191 = getelementptr inbounds %struct.env, %struct.env* %10, i32 0, i32 0
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = call i32 @event_add(i32* %193, i32* null)
  %195 = call i32 (...) @event_dispatch()
  %196 = call i32 (...) @client_shutdown()
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %117, %15
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @memset(%struct.env*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @ypldap_dns(i32*, %struct.passwd*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @chroot(i32) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @setproctitle(i8*) #1

declare dso_local i64 @setgroups(i32, i32*) #1

declare dso_local i64 @setresgid(i32, i32, i32) #1

declare dso_local i64 @setresuid(i32, i32, i32) #1

declare dso_local i32 @event_init(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @signal_set(%struct.event*, i32, i32, i32*) #1

declare dso_local i32 @signal_add(%struct.event*, i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @imsg_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @event_set(i32*, i32, i8*, i32, %struct.env*) #1

declare dso_local i32 @event_add(i32*, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @client_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

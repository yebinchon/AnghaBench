; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ac/extr_ac.c_log_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ac/extr_ac.c_log_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i8*, i32, i32, i32, i32 }
%struct.utmpx_entry = type { i32, i32, i32, i32 }

@Flags = common dso_local global i32 0, align 4
@AC_T = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@CurUtmpx = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@Console = common dso_local global i32 0, align 4
@FirstTime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.utmpx*)* @log_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_in(%struct.utmpx* %0) #0 {
  %2 = alloca %struct.utmpx*, align 8
  %3 = alloca %struct.utmpx_entry*, align 8
  store %struct.utmpx* %0, %struct.utmpx** %2, align 8
  %4 = load i32, i32* @Flags, align 4
  %5 = load i32, i32* @AC_T, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %10 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @do_tty(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  br label %43

15:                                               ; preds = %8, %1
  %16 = call %struct.utmpx_entry* @malloc(i32 16)
  store %struct.utmpx_entry* %16, %struct.utmpx_entry** %3, align 8
  %17 = icmp eq %struct.utmpx_entry* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  %22 = load i32, i32* @next, align 4
  %23 = call i32 @SLIST_INSERT_HEAD(i32* @CurUtmpx, %struct.utmpx_entry* %21, i32 %22)
  %24 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  %25 = getelementptr inbounds %struct.utmpx_entry, %struct.utmpx_entry* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %28 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlcpy(i32 %26, i32 %29, i32 4)
  %31 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  %32 = getelementptr inbounds %struct.utmpx_entry, %struct.utmpx_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %35 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memcpy(i32 %33, i32 %36, i32 4)
  %38 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %39 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  %42 = getelementptr inbounds %struct.utmpx_entry, %struct.utmpx_entry* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @do_tty(i32) #1

declare dso_local %struct.utmpx_entry* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.utmpx_entry*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

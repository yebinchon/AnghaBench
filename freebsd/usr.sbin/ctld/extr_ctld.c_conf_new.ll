; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_conf_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_conf_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conf* @conf_new() #0 {
  %1 = alloca %struct.conf*, align 8
  %2 = call %struct.conf* @calloc(i32 1, i32 56)
  store %struct.conf* %2, %struct.conf** %1, align 8
  %3 = load %struct.conf*, %struct.conf** %1, align 8
  %4 = icmp eq %struct.conf* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load %struct.conf*, %struct.conf** %1, align 8
  %9 = getelementptr inbounds %struct.conf, %struct.conf* %8, i32 0, i32 11
  %10 = call i32 @TAILQ_INIT(i32* %9)
  %11 = load %struct.conf*, %struct.conf** %1, align 8
  %12 = getelementptr inbounds %struct.conf, %struct.conf* %11, i32 0, i32 10
  %13 = call i32 @TAILQ_INIT(i32* %12)
  %14 = load %struct.conf*, %struct.conf** %1, align 8
  %15 = getelementptr inbounds %struct.conf, %struct.conf* %14, i32 0, i32 9
  %16 = call i32 @TAILQ_INIT(i32* %15)
  %17 = load %struct.conf*, %struct.conf** %1, align 8
  %18 = getelementptr inbounds %struct.conf, %struct.conf* %17, i32 0, i32 8
  %19 = call i32 @TAILQ_INIT(i32* %18)
  %20 = load %struct.conf*, %struct.conf** %1, align 8
  %21 = getelementptr inbounds %struct.conf, %struct.conf* %20, i32 0, i32 7
  %22 = call i32 @TAILQ_INIT(i32* %21)
  %23 = load %struct.conf*, %struct.conf** %1, align 8
  %24 = getelementptr inbounds %struct.conf, %struct.conf* %23, i32 0, i32 6
  %25 = call i32 @TAILQ_INIT(i32* %24)
  %26 = load %struct.conf*, %struct.conf** %1, align 8
  %27 = getelementptr inbounds %struct.conf, %struct.conf* %26, i32 0, i32 5
  %28 = call i32 @TAILQ_INIT(i32* %27)
  %29 = load %struct.conf*, %struct.conf** %1, align 8
  %30 = getelementptr inbounds %struct.conf, %struct.conf* %29, i32 0, i32 0
  store i32 900, i32* %30, align 8
  %31 = load %struct.conf*, %struct.conf** %1, align 8
  %32 = getelementptr inbounds %struct.conf, %struct.conf* %31, i32 0, i32 1
  store i32 5, i32* %32, align 4
  %33 = load %struct.conf*, %struct.conf** %1, align 8
  %34 = getelementptr inbounds %struct.conf, %struct.conf* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.conf*, %struct.conf** %1, align 8
  %36 = getelementptr inbounds %struct.conf, %struct.conf* %35, i32 0, i32 2
  store i32 60, i32* %36, align 8
  %37 = load %struct.conf*, %struct.conf** %1, align 8
  %38 = getelementptr inbounds %struct.conf, %struct.conf* %37, i32 0, i32 3
  store i32 30, i32* %38, align 4
  %39 = load %struct.conf*, %struct.conf** %1, align 8
  ret %struct.conf* %39
}

declare dso_local %struct.conf* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

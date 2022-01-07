; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bvm/extr_bvm_console.c_bvm_cnprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bvm/extr_bvm_console.c_bvm_cnprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { i32, i32 }

@CN_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"bvmcons\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bvmconsole\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@bvm_cons_port = common dso_local global i32 0, align 4
@BVM_CONS_SIG = common dso_local global i64 0, align 8
@CN_REMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @bvm_cnprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bvm_cnprobe(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @CN_DEAD, align 4
  %6 = load %struct.consdev*, %struct.consdev** %2, align 8
  %7 = getelementptr inbounds %struct.consdev, %struct.consdev* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.consdev*, %struct.consdev** %2, align 8
  %9 = getelementptr inbounds %struct.consdev, %struct.consdev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strcpy(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = call i64 @resource_int_value(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %1
  %16 = call i64 @resource_int_value(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %4)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* @bvm_cons_port, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* @bvm_cons_port, align 4
  %22 = call i64 @inw(i32 %21)
  %23 = load i64, i64* @BVM_CONS_SIG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @CN_REMOTE, align 4
  %27 = load %struct.consdev*, %struct.consdev** %2, align 8
  %28 = getelementptr inbounds %struct.consdev, %struct.consdev* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i64 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_node_is_compatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_node_is_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFW_COMPAT_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_bus_node_is_compatible(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @OFW_COMPAT_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @OF_getproplen(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load i32, i32* @OFW_COMPAT_LEN, align 4
  %21 = call i32 @bzero(i8* %14, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @OFW_COMPAT_LEN, align 4
  %24 = call i64 @OF_getprop(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %32

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @ofw_bus_node_is_compatible_int(i8* %14, i32 %28, i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %27, %26, %18
  %33 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %33)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OF_getproplen(i32, i8*) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i64 @OF_getprop(i32, i8*, i8*, i32) #2

declare dso_local i32 @ofw_bus_node_is_compatible_int(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

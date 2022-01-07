; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_add_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_add_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INTR_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: xen_intr_add_handler: intr_add_handler failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_intr_add_handler(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xenisrc*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = call %struct.xenisrc* @xen_intr_isrc(i32 %16)
  store %struct.xenisrc* %17, %struct.xenisrc** %14, align 8
  %18 = load %struct.xenisrc*, %struct.xenisrc** %14, align 8
  %19 = icmp eq %struct.xenisrc* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %6
  %21 = load %struct.xenisrc*, %struct.xenisrc** %14, align 8
  %22 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %6
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %7, align 4
  br label %49

27:                                               ; preds = %20
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.xenisrc*, %struct.xenisrc** %14, align 8
  %30 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @INTR_EXCL, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.xenisrc*, %struct.xenisrc** %14, align 8
  %39 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %38, i32 0, i32 0
  %40 = call i32 @intr_add_handler(i8* %28, i32 %31, i32 %32, i32 %33, i8* %34, i32 %37, i32** %39, i32 0)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %27
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %25
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.xenisrc* @xen_intr_isrc(i32) #1

declare dso_local i32 @intr_add_handler(i8*, i32, i32, i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

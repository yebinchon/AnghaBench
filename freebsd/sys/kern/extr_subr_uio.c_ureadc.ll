; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_ureadc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_ureadc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i64, i64, i32, i32, %struct.iovec* }
%struct.iovec = type { i64, i8* }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Calling ureadc()\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ureadc\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ureadc(i32 %0, %struct.uio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.uio* %1, %struct.uio** %5, align 8
  %8 = load i32, i32* @WARN_GIANTOK, align 4
  %9 = load i32, i32* @WARN_SLEEPOK, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @WITNESS_WARN(i32 %10, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %32, %2
  %13 = load %struct.uio*, %struct.uio** %5, align 8
  %14 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.uio*, %struct.uio** %5, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %12
  %23 = call i32 @panic(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load %struct.uio*, %struct.uio** %5, align 8
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %25, i32 0, i32 4
  %27 = load %struct.iovec*, %struct.iovec** %26, align 8
  store %struct.iovec* %27, %struct.iovec** %6, align 8
  %28 = load %struct.iovec*, %struct.iovec** %6, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.uio*, %struct.uio** %5, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.uio*, %struct.uio** %5, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 4
  %39 = load %struct.iovec*, %struct.iovec** %38, align 8
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 1
  store %struct.iovec* %40, %struct.iovec** %38, align 8
  br label %12

41:                                               ; preds = %24
  %42 = load %struct.uio*, %struct.uio** %5, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %63 [
    i32 128, label %45
    i32 129, label %55
    i32 130, label %62
  ]

45:                                               ; preds = %41
  %46 = load %struct.iovec*, %struct.iovec** %6, align 8
  %47 = getelementptr inbounds %struct.iovec, %struct.iovec* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @subyte(i8* %48, i32 %49)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @EFAULT, align 4
  store i32 %53, i32* %3, align 4
  br label %82

54:                                               ; preds = %45
  br label %63

55:                                               ; preds = %41
  %56 = load %struct.iovec*, %struct.iovec** %6, align 8
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %7, align 8
  %59 = load i32, i32* %4, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %7, align 8
  store i8 %60, i8* %61, align 1
  br label %63

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %41, %62, %55, %54
  %64 = load %struct.iovec*, %struct.iovec** %6, align 8
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load %struct.iovec*, %struct.iovec** %6, align 8
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.iovec*, %struct.iovec** %6, align 8
  %71 = getelementptr inbounds %struct.iovec, %struct.iovec* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.uio*, %struct.uio** %5, align 8
  %75 = getelementptr inbounds %struct.uio, %struct.uio* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.uio*, %struct.uio** %5, align 8
  %79 = getelementptr inbounds %struct.uio, %struct.uio* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %63, %52
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @subyte(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

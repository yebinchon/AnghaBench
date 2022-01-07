; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_request.c_check_for_scsi_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_request.c_check_for_scsi_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_for_scsi_opcode(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %74 [
    i32 128, label %13
    i32 132, label %15
    i32 131, label %41
    i32 135, label %43
    i32 130, label %52
    i32 134, label %54
    i32 129, label %63
    i32 133, label %65
  ]

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  store i32 1, i32* %14, align 4
  br label %15

15:                                               ; preds = %4, %13
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 31
  %20 = shl i32 %19, 16
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = or i32 %20, %24
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %15
  %39 = load i32*, i32** %9, align 8
  store i32 256, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %15
  br label %76

41:                                               ; preds = %4
  %42 = load i32*, i32** %7, align 8
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %4, %41
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = call i32 @GET_BE32(i32* %45)
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 7
  %50 = call i32 @GET_BE16(i32* %49)
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %76

52:                                               ; preds = %4
  %53 = load i32*, i32** %7, align 8
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %4, %52
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = call i32 @GET_BE32(i32* %56)
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  %61 = call i32 @GET_BE32(i32* %60)
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %76

63:                                               ; preds = %4
  %64 = load i32*, i32** %7, align 8
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %4, %63
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = call i32 @GET_BE64(i32* %67)
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 10
  %72 = call i32 @GET_BE32(i32* %71)
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %76

74:                                               ; preds = %4
  %75 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %75, i32* %5, align 4
  br label %78

76:                                               ; preds = %65, %54, %43, %40
  %77 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @GET_BE32(i32*) #1

declare dso_local i32 @GET_BE16(i32*) #1

declare dso_local i32 @GET_BE64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

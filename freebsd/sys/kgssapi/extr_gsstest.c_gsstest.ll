; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gsstest.c_gsstest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gsstest.c_gsstest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.gsstest_args = type { i32, i32, i32 }
%struct.gsstest_2_args = type { %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.gsstest_2_res = type { %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, %struct.gsstest_2_res* }

@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.gsstest_args*)* @gsstest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsstest(%struct.thread* %0, %struct.gsstest_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.gsstest_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsstest_2_args, align 4
  %8 = alloca %struct.gsstest_2_res, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.gsstest_args* %1, %struct.gsstest_args** %5, align 8
  %12 = load %struct.gsstest_args*, %struct.gsstest_args** %5, align 8
  %13 = getelementptr inbounds %struct.gsstest_args, %struct.gsstest_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %105 [
    i32 1, label %15
    i32 2, label %18
    i32 3, label %99
    i32 4, label %102
  ]

15:                                               ; preds = %2
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = call i32 @gsstest_1(%struct.thread* %16)
  store i32 %17, i32* %3, align 4
  br label %107

18:                                               ; preds = %2
  %19 = load %struct.gsstest_args*, %struct.gsstest_args** %5, align 8
  %20 = getelementptr inbounds %struct.gsstest_args, %struct.gsstest_args* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = bitcast %struct.gsstest_2_args* %7 to %struct.gsstest_2_res*
  %23 = call i32 @copyin(i32 %21, %struct.gsstest_2_res* %22, i32 28)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %107

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %7, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @M_GSSAPI, align 4
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = call %struct.gsstest_2_res* @malloc(i32 %34, i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store %struct.gsstest_2_res* %37, %struct.gsstest_2_res** %38, align 8
  %39 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %7, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %43 = load %struct.gsstest_2_res*, %struct.gsstest_2_res** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @copyin(i32 %41, %struct.gsstest_2_res* %43, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %28
  %50 = call i32 @gss_release_buffer(i32* %11, %struct.TYPE_9__* %9)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %107

52:                                               ; preds = %28
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store %struct.gsstest_2_res* null, %struct.gsstest_2_res** %54, align 8
  %55 = load %struct.thread*, %struct.thread** %4, align 8
  %56 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %7, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %8, i32 0, i32 2
  %59 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %8, i32 0, i32 1
  %60 = call i32 @gsstest_2(%struct.thread* %55, i32 %57, %struct.TYPE_9__* %9, i32* %58, i32* %59, %struct.TYPE_9__* %10)
  %61 = call i32 @gss_release_buffer(i32* %11, %struct.TYPE_9__* %9)
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %7, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = call i32 @gss_release_buffer(i32* %11, %struct.TYPE_9__* %10)
  %70 = load i32, i32* @EOVERFLOW, align 4
  store i32 %70, i32* %3, align 4
  br label %107

71:                                               ; preds = %52
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %8, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %7, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %8, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %82 = load %struct.gsstest_2_res*, %struct.gsstest_2_res** %81, align 8
  %83 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %8, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @copyout(%struct.gsstest_2_res* %82, i32 %85, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = call i32 @gss_release_buffer(i32* %11, %struct.TYPE_9__* %10)
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %71
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %107

94:                                               ; preds = %71
  %95 = load %struct.gsstest_args*, %struct.gsstest_args** %5, align 8
  %96 = getelementptr inbounds %struct.gsstest_args, %struct.gsstest_args* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @copyout(%struct.gsstest_2_res* %8, i32 %97, i32 28)
  store i32 %98, i32* %3, align 4
  br label %107

99:                                               ; preds = %2
  %100 = load %struct.thread*, %struct.thread** %4, align 8
  %101 = call i32 @gsstest_3(%struct.thread* %100)
  store i32 %101, i32* %3, align 4
  br label %107

102:                                              ; preds = %2
  %103 = load %struct.thread*, %struct.thread** %4, align 8
  %104 = call i32 @gsstest_4(%struct.thread* %103)
  store i32 %104, i32* %3, align 4
  br label %107

105:                                              ; preds = %2
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %102, %99, %94, %92, %68, %49, %26, %15
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @gsstest_1(%struct.thread*) #1

declare dso_local i32 @copyin(i32, %struct.gsstest_2_res*, i32) #1

declare dso_local %struct.gsstest_2_res* @malloc(i32, i32, i32) #1

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @gsstest_2(%struct.thread*, i32, %struct.TYPE_9__*, i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @copyout(%struct.gsstest_2_res*, i32, i32) #1

declare dso_local i32 @gsstest_3(%struct.thread*) #1

declare dso_local i32 @gsstest_4(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

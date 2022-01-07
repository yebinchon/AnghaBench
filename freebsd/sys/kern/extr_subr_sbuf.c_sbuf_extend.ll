; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_extend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32, i8* }

@SBUF_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbuf*, i32)* @sbuf_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbuf_extend(%struct.sbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %9 = call i32 @SBUF_CANEXTEND(%struct.sbuf* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %54

12:                                               ; preds = %2
  %13 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %14 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 @sbuf_extendsize(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %21 = call i32 @SBUF_MALLOCFLAG(%struct.sbuf* %20)
  %22 = call i8* @SBMALLOC(i32 %19, i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %54

26:                                               ; preds = %12
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %29 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %32 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memcpy(i8* %27, i8* %30, i32 %33)
  %35 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %36 = call i64 @SBUF_ISDYNAMIC(%struct.sbuf* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %40 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @SBFREE(i8* %41)
  br label %47

43:                                               ; preds = %26
  %44 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %45 = load i32, i32* @SBUF_DYNAMIC, align 4
  %46 = call i32 @SBUF_SETFLAG(%struct.sbuf* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %50 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %53 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %25, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @SBUF_CANEXTEND(%struct.sbuf*) #1

declare dso_local i32 @sbuf_extendsize(i32) #1

declare dso_local i8* @SBMALLOC(i32, i32) #1

declare dso_local i32 @SBUF_MALLOCFLAG(%struct.sbuf*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @SBUF_ISDYNAMIC(%struct.sbuf*) #1

declare dso_local i32 @SBFREE(i8*) #1

declare dso_local i32 @SBUF_SETFLAG(%struct.sbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

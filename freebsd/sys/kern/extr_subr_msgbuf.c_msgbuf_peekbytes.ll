; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_peekbytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_peekbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i64, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msgbuf_peekbytes(%struct.msgbuf* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msgbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.msgbuf* %0, %struct.msgbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %14 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %13, i32 0, i32 2
  %15 = call i32 @mtx_lock_spin(i32* %14)
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %20 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %21 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %24 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = call i64 @MSGBUF_SEQNORM(%struct.msgbuf* %19, i64 %26)
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  %29 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %30 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %29, i32 0, i32 2
  %31 = call i32 @mtx_unlock_spin(i32* %30)
  store i32 0, i32* %5, align 4
  br label %104

32:                                               ; preds = %4
  %33 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %34 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  %36 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @MSGBUF_SEQSUB(%struct.msgbuf* %36, i64 %37, i64 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %45 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %44, i32 0, i32 2
  %46 = call i32 @mtx_unlock_spin(i32* %45)
  store i32 0, i32* %5, align 4
  br label %104

47:                                               ; preds = %32
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %50 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %57 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = call i64 @MSGBUF_SEQNORM(%struct.msgbuf* %54, i64 %59)
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  %62 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %63 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %53, %47
  %66 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @MSGBUF_SEQ_TO_POS(%struct.msgbuf* %66, i64 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %72 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = sub nsw i64 %73, %74
  %76 = call i64 @min(i64 %70, i64 %75)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = call i64 @min(i64 %77, i64 %79)
  store i64 %80, i64* %10, align 8
  %81 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %82 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @MSGBUF_SEQ_TO_POS(%struct.msgbuf* %84, i64 %86)
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i8*, i8** %7, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @bcopy(i32* %88, i8* %89, i64 %90)
  %92 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i64 @MSGBUF_SEQNORM(%struct.msgbuf* %92, i64 %96)
  %98 = load i64*, i64** %9, align 8
  store i64 %97, i64* %98, align 8
  %99 = load %struct.msgbuf*, %struct.msgbuf** %6, align 8
  %100 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %99, i32 0, i32 2
  %101 = call i32 @mtx_unlock_spin(i32* %100)
  %102 = load i64, i64* %10, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %65, %43, %18
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @MSGBUF_SEQNORM(%struct.msgbuf*, i64) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i64 @MSGBUF_SEQSUB(%struct.msgbuf*, i64, i64) #1

declare dso_local i64 @MSGBUF_SEQ_TO_POS(%struct.msgbuf*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @bcopy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_getbytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_getbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i64, i64, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msgbuf_getbytes(%struct.msgbuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msgbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.msgbuf* %0, %struct.msgbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %12 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %11, i32 0, i32 3
  %13 = call i32 @mtx_lock_spin(i32* %12)
  %14 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %15 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %20 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @MSGBUF_SEQSUB(%struct.msgbuf* %17, i64 %18, i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %27 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %26, i32 0, i32 3
  %28 = call i32 @mtx_unlock_spin(i32* %27)
  store i32 0, i32* %4, align 4
  br label %89

29:                                               ; preds = %3
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %32 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %39 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = call i8* @MSGBUF_SEQNORM(%struct.msgbuf* %36, i64 %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %45 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %47 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %35, %29
  %50 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %51 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %52 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @MSGBUF_SEQ_TO_POS(%struct.msgbuf* %50, i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %57 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub nsw i64 %58, %59
  %61 = call i64 @min(i64 %55, i64 %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = call i64 @min(i64 %62, i64 %64)
  store i64 %65, i64* %8, align 8
  %66 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %67 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @bcopy(i32* %70, i8* %71, i64 %72)
  %74 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %75 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %76 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i8* @MSGBUF_SEQNORM(%struct.msgbuf* %74, i64 %79)
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %83 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %85 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %84, i32 0, i32 3
  %86 = call i32 @mtx_unlock_spin(i32* %85)
  %87 = load i64, i64* %8, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %49, %25
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @MSGBUF_SEQSUB(%struct.msgbuf*, i64, i64) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i8* @MSGBUF_SEQNORM(%struct.msgbuf*, i64) #1

declare dso_local i64 @MSGBUF_SEQ_TO_POS(%struct.msgbuf*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @bcopy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

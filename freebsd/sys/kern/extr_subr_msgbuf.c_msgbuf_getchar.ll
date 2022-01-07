; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_getchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_getchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i64, i64, i32, i8*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msgbuf_getchar(%struct.msgbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msgbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.msgbuf* %0, %struct.msgbuf** %3, align 8
  %7 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %8 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %7, i32 0, i32 2
  %9 = call i32 @mtx_lock_spin(i32* %8)
  %10 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %11 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %16 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @MSGBUF_SEQSUB(%struct.msgbuf* %13, i64 %14, i8* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %23 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %22, i32 0, i32 2
  %24 = call i32 @mtx_unlock_spin(i32* %23)
  store i32 -1, i32* %2, align 4
  br label %66

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %28 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %35 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = call i8* @MSGBUF_SEQNORM(%struct.msgbuf* %32, i64 %37)
  %39 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %40 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %31, %25
  %42 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %43 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %42, i32 0, i32 4
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %46 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %47 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @MSGBUF_SEQ_TO_POS(%struct.msgbuf* %45, i8* %48)
  %50 = getelementptr inbounds i64, i64* %44, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %54 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %55 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr i8, i8* %56, i64 1
  %58 = ptrtoint i8* %57 to i64
  %59 = call i8* @MSGBUF_SEQNORM(%struct.msgbuf* %53, i64 %58)
  %60 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %61 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %63 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %62, i32 0, i32 2
  %64 = call i32 @mtx_unlock_spin(i32* %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %41, %21
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @MSGBUF_SEQSUB(%struct.msgbuf*, i64, i8*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i8* @MSGBUF_SEQNORM(%struct.msgbuf*, i64) #1

declare dso_local i64 @MSGBUF_SEQ_TO_POS(%struct.msgbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

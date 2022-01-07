; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_clean_dsack_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_clean_dsack_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.sackblk = type { i8*, i8* }

@MAX_SACK_BLKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_clean_dsack_blocks(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %9 = load i32, i32* @MAX_SACK_BLKS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca %struct.sackblk, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @INP_WLOCK_ASSERT(i32 %15)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %65, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %17
  %24 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @SEQ_GEQ(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %23
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @SEQ_LEQ(i8* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %23
  br label %65

52:                                               ; preds = %44
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %12, i64 %55
  %57 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %56, i32 0, i32 1
  store i8* %53, i8** %57, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %12, i64 %60
  %62 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %61, i32 0, i32 0
  store i8* %58, i8** %62, align 16
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %52, %51
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %17

68:                                               ; preds = %17
  %69 = load i32, i32* %5, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %73 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 0
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 16, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @bcopy(%struct.sackblk* %12, %struct.TYPE_2__* %75, i32 %79)
  br label %81

81:                                               ; preds = %71, %68
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #2

declare dso_local i64 @SEQ_GEQ(i8*, i8*) #2

declare dso_local i64 @SEQ_LEQ(i8*, i32) #2

declare dso_local i32 @bcopy(%struct.sackblk*, %struct.TYPE_2__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

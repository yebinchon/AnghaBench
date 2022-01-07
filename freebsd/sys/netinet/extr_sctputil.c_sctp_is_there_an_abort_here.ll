; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_is_there_an_abort_here.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_is_there_an_abort_here.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.sctp_chunkhdr = type { i64, i32 }
%struct.sctp_init_chunk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SCTP_ABORT_ASSOCIATION = common dso_local global i64 0, align 8
@SCTP_INITIATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_is_there_an_abort_here(%struct.mbuf* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sctp_chunkhdr*, align 8
  %9 = alloca %struct.sctp_init_chunk*, align 8
  %10 = alloca %struct.sctp_init_chunk, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %11, align 4
  %17 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %18 = load i32, i32* %11, align 4
  %19 = bitcast %struct.sctp_init_chunk* %10 to i32*
  %20 = call i64 @sctp_m_getptr(%struct.mbuf* %17, i32 %18, i32 16, i32* %19)
  %21 = inttoptr i64 %20 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %21, %struct.sctp_chunkhdr** %8, align 8
  br label %22

22:                                               ; preds = %63, %3
  %23 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %8, align 8
  %24 = icmp ne %struct.sctp_chunkhdr* %23, null
  br i1 %24, label %25, label %75

25:                                               ; preds = %22
  %26 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %8, align 8
  %27 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ntohs(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %31, 16
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %75

34:                                               ; preds = %25
  %35 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %8, align 8
  %36 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SCTP_ABORT_ASSOCIATION, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %76

41:                                               ; preds = %34
  %42 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %8, align 8
  %43 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SCTP_INITIATION, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %49 = load i32, i32* %11, align 4
  %50 = bitcast %struct.sctp_init_chunk* %10 to i32*
  %51 = call i64 @sctp_m_getptr(%struct.mbuf* %48, i32 %49, i32 4, i32* %50)
  %52 = inttoptr i64 %51 to %struct.sctp_init_chunk*
  store %struct.sctp_init_chunk* %52, %struct.sctp_init_chunk** %9, align 8
  %53 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %9, align 8
  %54 = icmp ne %struct.sctp_init_chunk* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %9, align 8
  %57 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohl(i32 %59)
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %47
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @SCTP_SIZE32(i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %11, align 4
  %70 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = bitcast %struct.sctp_init_chunk* %10 to i32*
  %73 = call i64 @sctp_m_getptr(%struct.mbuf* %70, i32 %71, i32 16, i32* %72)
  %74 = inttoptr i64 %73 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %74, %struct.sctp_chunkhdr** %8, align 8
  br label %22

75:                                               ; preds = %33, %22
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %40
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @sctp_m_getptr(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @SCTP_SIZE32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

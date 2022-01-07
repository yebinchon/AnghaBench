; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_crc32.c_sctp_calculate_cksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_crc32.c_sctp_calculate_cksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i64, %struct.mbuf* }

@.str = private unnamed_addr constant [52 x i8] c"sctp_calculate_cksum, offset > length of mbuf chain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_calculate_cksum(%struct.mbuf* %0, i64 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 4294967295, i64* %5, align 8
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i64, i64* %4, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %11 = icmp ne %struct.mbuf* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %29

20:                                               ; preds = %9
  %21 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = sub nsw i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 2
  %28 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  store %struct.mbuf* %28, %struct.mbuf** %3, align 8
  br label %6

29:                                               ; preds = %19, %6
  %30 = load i64, i64* %4, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = add nsw i64 %36, %37
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = sub nsw i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i64 @calculate_crc32c(i64 %33, i8* %39, i32 %45)
  store i64 %46, i64* %5, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 2
  %49 = load %struct.mbuf*, %struct.mbuf** %48, align 8
  store %struct.mbuf* %49, %struct.mbuf** %3, align 8
  br label %50

50:                                               ; preds = %32, %29
  br label %51

51:                                               ; preds = %54, %50
  %52 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %53 = icmp ne %struct.mbuf* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @calculate_crc32c(i64 %55, i8* %59, i32 %63)
  store i64 %64, i64* %5, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 2
  %67 = load %struct.mbuf*, %struct.mbuf** %66, align 8
  store %struct.mbuf* %67, %struct.mbuf** %3, align 8
  br label %51

68:                                               ; preds = %51
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @sctp_finalize_crc32c(i64 %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @calculate_crc32c(i64, i8*, i32) #1

declare dso_local i64 @sctp_finalize_crc32c(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

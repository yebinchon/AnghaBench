; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_ShowAliasStats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_ShowAliasStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [85 x i8] c"icmp=%u, udp=%u, tcp=%u, sctp=%u, pptp=%u, proto=%u, frag_id=%u frag_ptr=%u / tot=%u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" (sock=%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*)* @ShowAliasStats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShowAliasStats(%struct.libalias* %0) #0 {
  %2 = alloca %struct.libalias*, align 8
  %3 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %2, align 8
  %4 = load %struct.libalias*, %struct.libalias** %2, align 8
  %5 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %4)
  %6 = load %struct.libalias*, %struct.libalias** %2, align 8
  %7 = getelementptr inbounds %struct.libalias, %struct.libalias* %6, i32 0, i32 9
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %80

10:                                               ; preds = %1
  %11 = load %struct.libalias*, %struct.libalias** %2, align 8
  %12 = getelementptr inbounds %struct.libalias, %struct.libalias* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.libalias*, %struct.libalias** %2, align 8
  %15 = getelementptr inbounds %struct.libalias, %struct.libalias* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = load %struct.libalias*, %struct.libalias** %2, align 8
  %19 = getelementptr inbounds %struct.libalias, %struct.libalias* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 1
  %22 = add nsw i32 %17, %21
  %23 = load %struct.libalias*, %struct.libalias** %2, align 8
  %24 = getelementptr inbounds %struct.libalias, %struct.libalias* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load %struct.libalias*, %struct.libalias** %2, align 8
  %28 = getelementptr inbounds %struct.libalias, %struct.libalias* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  %31 = load %struct.libalias*, %struct.libalias** %2, align 8
  %32 = getelementptr inbounds %struct.libalias, %struct.libalias* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = load %struct.libalias*, %struct.libalias** %2, align 8
  %36 = getelementptr inbounds %struct.libalias, %struct.libalias* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %34, %37
  %39 = load %struct.libalias*, %struct.libalias** %2, align 8
  %40 = getelementptr inbounds %struct.libalias, %struct.libalias* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %3, align 4
  %43 = load %struct.libalias*, %struct.libalias** %2, align 8
  %44 = getelementptr inbounds %struct.libalias, %struct.libalias* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.libalias*, %struct.libalias** %2, align 8
  %47 = getelementptr inbounds %struct.libalias, %struct.libalias* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.libalias*, %struct.libalias** %2, align 8
  %50 = getelementptr inbounds %struct.libalias, %struct.libalias* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.libalias*, %struct.libalias** %2, align 8
  %53 = getelementptr inbounds %struct.libalias, %struct.libalias* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.libalias*, %struct.libalias** %2, align 8
  %56 = getelementptr inbounds %struct.libalias, %struct.libalias* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 1
  %59 = load %struct.libalias*, %struct.libalias** %2, align 8
  %60 = getelementptr inbounds %struct.libalias, %struct.libalias* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.libalias*, %struct.libalias** %2, align 8
  %63 = getelementptr inbounds %struct.libalias, %struct.libalias* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.libalias*, %struct.libalias** %2, align 8
  %66 = getelementptr inbounds %struct.libalias, %struct.libalias* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.libalias*, %struct.libalias** %2, align 8
  %69 = getelementptr inbounds %struct.libalias, %struct.libalias* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 (i64, i8*, i32, ...) @AliasLog(i64 %45, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54, i32 %58, i32 %61, i32 %64, i32 %67, i32 %70, i32 %71)
  %73 = load %struct.libalias*, %struct.libalias** %2, align 8
  %74 = getelementptr inbounds %struct.libalias, %struct.libalias* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.libalias*, %struct.libalias** %2, align 8
  %77 = getelementptr inbounds %struct.libalias, %struct.libalias* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i64, i8*, i32, ...) @AliasLog(i64 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @AliasLog(i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

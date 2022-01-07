; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_AliasSctpInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_AliasSctpInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32, i64, %struct.TYPE_2__, i32, i32*, i32* }
%struct.TYPE_2__ = type { i64, i32, i32* }

@sysctl_hashtable_size = common dso_local global i32 0, align 4
@SN_LOG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Initialising SCTP NAT Instance (hash_table_size:%d)\0A\00", align 1
@SN_TIMER_QUEUE_SIZE = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AliasSctpInit(%struct.libalias* %0) #0 {
  %2 = alloca %struct.libalias*, align 8
  %3 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %2, align 8
  %4 = load i32, i32* @sysctl_hashtable_size, align 4
  %5 = load %struct.libalias*, %struct.libalias** %2, align 8
  %6 = getelementptr inbounds %struct.libalias, %struct.libalias* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 8
  %7 = load i32, i32* @SN_LOG_EVENT, align 4
  %8 = load %struct.libalias*, %struct.libalias** %2, align 8
  %9 = getelementptr inbounds %struct.libalias, %struct.libalias* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @SctpAliasLog(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 @SN_LOG(i32 %7, i32 %11)
  %13 = load %struct.libalias*, %struct.libalias** %2, align 8
  %14 = getelementptr inbounds %struct.libalias, %struct.libalias* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @sn_calloc(i32 %15, i32 4)
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.libalias*, %struct.libalias** %2, align 8
  %19 = getelementptr inbounds %struct.libalias, %struct.libalias* %18, i32 0, i32 5
  store i32* %17, i32** %19, align 8
  %20 = load %struct.libalias*, %struct.libalias** %2, align 8
  %21 = getelementptr inbounds %struct.libalias, %struct.libalias* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @sn_calloc(i32 %22, i32 4)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.libalias*, %struct.libalias** %2, align 8
  %26 = getelementptr inbounds %struct.libalias, %struct.libalias* %25, i32 0, i32 4
  store i32* %24, i32** %26, align 8
  %27 = load i32, i32* @SN_TIMER_QUEUE_SIZE, align 4
  %28 = call i8* @sn_calloc(i32 %27, i32 4)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.libalias*, %struct.libalias** %2, align 8
  %31 = getelementptr inbounds %struct.libalias, %struct.libalias* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32* %29, i32** %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %54, %1
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.libalias*, %struct.libalias** %2, align 8
  %36 = getelementptr inbounds %struct.libalias, %struct.libalias* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load %struct.libalias*, %struct.libalias** %2, align 8
  %41 = getelementptr inbounds %struct.libalias, %struct.libalias* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @LIST_INIT(i32* %45)
  %47 = load %struct.libalias*, %struct.libalias** %2, align 8
  %48 = getelementptr inbounds %struct.libalias, %struct.libalias* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @LIST_INIT(i32* %52)
  br label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %33

57:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %71, %57
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @SN_TIMER_QUEUE_SIZE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load %struct.libalias*, %struct.libalias** %2, align 8
  %64 = getelementptr inbounds %struct.libalias, %struct.libalias* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @LIST_INIT(i32* %69)
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %58

74:                                               ; preds = %58
  %75 = load %struct.libalias*, %struct.libalias** %2, align 8
  %76 = getelementptr inbounds %struct.libalias, %struct.libalias* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.libalias*, %struct.libalias** %2, align 8
  %79 = getelementptr inbounds %struct.libalias, %struct.libalias* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load %struct.libalias*, %struct.libalias** %2, align 8
  %82 = getelementptr inbounds %struct.libalias, %struct.libalias* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.libalias*, %struct.libalias** %2, align 8
  %85 = getelementptr inbounds %struct.libalias, %struct.libalias* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  ret void
}

declare dso_local i32 @SN_LOG(i32, i32) #1

declare dso_local i32 @SctpAliasLog(i8*, i32) #1

declare dso_local i8* @sn_calloc(i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

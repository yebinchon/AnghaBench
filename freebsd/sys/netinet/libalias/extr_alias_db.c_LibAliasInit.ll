; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32*, i32*, i8*, i8* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.timeval = type { i8* }

@instancehead = common dso_local global i32 0, align 4
@finishoff = common dso_local global i32 0, align 4
@instancelist = common dso_local global i32 0, align 4
@LINK_TABLE_OUT_SIZE = common dso_local global i32 0, align 4
@LINK_TABLE_IN_SIZE = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i8* null, align 8
@PKT_ALIAS_SAME_PORTS = common dso_local global i32 0, align 4
@PKT_ALIAS_USE_SOCKETS = common dso_local global i32 0, align 4
@PKT_ALIAS_RESET_ON_ADDR_CHANGE = common dso_local global i32 0, align 4
@M_ALIAS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.libalias* @LibAliasInit(%struct.libalias* %0) #0 {
  %2 = alloca %struct.libalias*, align 8
  %3 = alloca %struct.libalias*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  store %struct.libalias* %0, %struct.libalias** %3, align 8
  %6 = load %struct.libalias*, %struct.libalias** %3, align 8
  %7 = icmp eq %struct.libalias* %6, null
  br i1 %7, label %8, label %69

8:                                                ; preds = %1
  %9 = call %struct.libalias* @calloc(i32 144, i32 1)
  store %struct.libalias* %9, %struct.libalias** %3, align 8
  %10 = load %struct.libalias*, %struct.libalias** %3, align 8
  %11 = icmp eq %struct.libalias* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load %struct.libalias*, %struct.libalias** %3, align 8
  store %struct.libalias* %13, %struct.libalias** %2, align 8
  br label %120

14:                                               ; preds = %8
  %15 = call i64 @LIST_EMPTY(i32* @instancehead)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @finishoff, align 4
  %19 = call i32 @atexit(i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.libalias*, %struct.libalias** %3, align 8
  %22 = load i32, i32* @instancelist, align 4
  %23 = call i32 @LIST_INSERT_HEAD(i32* @instancehead, %struct.libalias* %21, i32 %22)
  %24 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.libalias*, %struct.libalias** %3, align 8
  %28 = getelementptr inbounds %struct.libalias, %struct.libalias* %27, i32 0, i32 18
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.libalias*, %struct.libalias** %3, align 8
  %32 = getelementptr inbounds %struct.libalias, %struct.libalias* %31, i32 0, i32 17
  store i8* %30, i8** %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %45, %20
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @LINK_TABLE_OUT_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.libalias*, %struct.libalias** %3, align 8
  %39 = getelementptr inbounds %struct.libalias, %struct.libalias* %38, i32 0, i32 16
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @LIST_INIT(i32* %43)
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %33

48:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @LINK_TABLE_IN_SIZE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.libalias*, %struct.libalias** %3, align 8
  %55 = getelementptr inbounds %struct.libalias, %struct.libalias* %54, i32 0, i32 15
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @LIST_INIT(i32* %59)
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %49

64:                                               ; preds = %49
  %65 = load %struct.libalias*, %struct.libalias** %3, align 8
  %66 = call i32 @LIBALIAS_LOCK_INIT(%struct.libalias* %65)
  %67 = load %struct.libalias*, %struct.libalias** %3, align 8
  %68 = call i32 @LIBALIAS_LOCK(%struct.libalias* %67)
  br label %78

69:                                               ; preds = %1
  %70 = load %struct.libalias*, %struct.libalias** %3, align 8
  %71 = call i32 @LIBALIAS_LOCK(%struct.libalias* %70)
  %72 = load %struct.libalias*, %struct.libalias** %3, align 8
  %73 = getelementptr inbounds %struct.libalias, %struct.libalias* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.libalias*, %struct.libalias** %3, align 8
  %75 = call i32 @CleanupAliasData(%struct.libalias* %74)
  %76 = load %struct.libalias*, %struct.libalias** %3, align 8
  %77 = getelementptr inbounds %struct.libalias, %struct.libalias* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %69, %64
  %79 = load i8*, i8** @INADDR_ANY, align 8
  %80 = load %struct.libalias*, %struct.libalias** %3, align 8
  %81 = getelementptr inbounds %struct.libalias, %struct.libalias* %80, i32 0, i32 14
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  %83 = load i8*, i8** @INADDR_ANY, align 8
  %84 = load %struct.libalias*, %struct.libalias** %3, align 8
  %85 = getelementptr inbounds %struct.libalias, %struct.libalias* %84, i32 0, i32 13
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  %87 = load %struct.libalias*, %struct.libalias** %3, align 8
  %88 = getelementptr inbounds %struct.libalias, %struct.libalias* %87, i32 0, i32 12
  store i64 0, i64* %88, align 8
  %89 = load %struct.libalias*, %struct.libalias** %3, align 8
  %90 = getelementptr inbounds %struct.libalias, %struct.libalias* %89, i32 0, i32 11
  store i64 0, i64* %90, align 8
  %91 = load %struct.libalias*, %struct.libalias** %3, align 8
  %92 = getelementptr inbounds %struct.libalias, %struct.libalias* %91, i32 0, i32 10
  store i64 0, i64* %92, align 8
  %93 = load %struct.libalias*, %struct.libalias** %3, align 8
  %94 = getelementptr inbounds %struct.libalias, %struct.libalias* %93, i32 0, i32 9
  store i64 0, i64* %94, align 8
  %95 = load %struct.libalias*, %struct.libalias** %3, align 8
  %96 = getelementptr inbounds %struct.libalias, %struct.libalias* %95, i32 0, i32 8
  store i64 0, i64* %96, align 8
  %97 = load %struct.libalias*, %struct.libalias** %3, align 8
  %98 = getelementptr inbounds %struct.libalias, %struct.libalias* %97, i32 0, i32 7
  store i64 0, i64* %98, align 8
  %99 = load %struct.libalias*, %struct.libalias** %3, align 8
  %100 = getelementptr inbounds %struct.libalias, %struct.libalias* %99, i32 0, i32 6
  store i64 0, i64* %100, align 8
  %101 = load %struct.libalias*, %struct.libalias** %3, align 8
  %102 = getelementptr inbounds %struct.libalias, %struct.libalias* %101, i32 0, i32 5
  store i64 0, i64* %102, align 8
  %103 = load %struct.libalias*, %struct.libalias** %3, align 8
  %104 = getelementptr inbounds %struct.libalias, %struct.libalias* %103, i32 0, i32 4
  store i64 0, i64* %104, align 8
  %105 = load %struct.libalias*, %struct.libalias** %3, align 8
  %106 = getelementptr inbounds %struct.libalias, %struct.libalias* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* @PKT_ALIAS_SAME_PORTS, align 4
  %108 = load i32, i32* @PKT_ALIAS_USE_SOCKETS, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @PKT_ALIAS_RESET_ON_ADDR_CHANGE, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.libalias*, %struct.libalias** %3, align 8
  %113 = getelementptr inbounds %struct.libalias, %struct.libalias* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.libalias*, %struct.libalias** %3, align 8
  %115 = getelementptr inbounds %struct.libalias, %struct.libalias* %114, i32 0, i32 2
  store i32 -1, i32* %115, align 8
  %116 = call i32 (...) @LibAliasRefreshModules()
  %117 = load %struct.libalias*, %struct.libalias** %3, align 8
  %118 = call i32 @LIBALIAS_UNLOCK(%struct.libalias* %117)
  %119 = load %struct.libalias*, %struct.libalias** %3, align 8
  store %struct.libalias* %119, %struct.libalias** %2, align 8
  br label %120

120:                                              ; preds = %78, %12
  %121 = load %struct.libalias*, %struct.libalias** %2, align 8
  ret %struct.libalias* %121
}

declare dso_local %struct.libalias* @calloc(i32, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.libalias*, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @LIBALIAS_LOCK_INIT(%struct.libalias*) #1

declare dso_local i32 @LIBALIAS_LOCK(%struct.libalias*) #1

declare dso_local i32 @CleanupAliasData(%struct.libalias*) #1

declare dso_local i32 @LibAliasRefreshModules(...) #1

declare dso_local i32 @LIBALIAS_UNLOCK(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

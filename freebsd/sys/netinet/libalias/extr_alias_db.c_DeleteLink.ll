; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_DeleteLink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_DeleteLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32, i32, i32, %struct.TYPE_2__, %struct.alias_link*, %struct.alias_link*, %struct.libalias* }
%struct.TYPE_2__ = type { %struct.server*, %struct.server* }
%struct.server = type { i32, i32, i32, %struct.TYPE_2__, %struct.server*, %struct.server*, %struct.libalias* }
%struct.libalias = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@LINK_PERMANENT = common dso_local global i32 0, align 4
@list_out = common dso_local global i32 0, align 4
@list_in = common dso_local global i32 0, align 4
@PKT_ALIAS_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alias_link*)* @DeleteLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DeleteLink(%struct.alias_link* %0) #0 {
  %2 = alloca %struct.alias_link*, align 8
  %3 = alloca %struct.libalias*, align 8
  %4 = alloca %struct.server*, align 8
  %5 = alloca %struct.server*, align 8
  %6 = alloca %struct.server*, align 8
  store %struct.alias_link* %0, %struct.alias_link** %2, align 8
  %7 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %8 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %7, i32 0, i32 6
  %9 = load %struct.libalias*, %struct.libalias** %8, align 8
  store %struct.libalias* %9, %struct.libalias** %3, align 8
  %10 = load %struct.libalias*, %struct.libalias** %3, align 8
  %11 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %10)
  %12 = load %struct.libalias*, %struct.libalias** %3, align 8
  %13 = getelementptr inbounds %struct.libalias, %struct.libalias* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %18 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LINK_PERMANENT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %140

24:                                               ; preds = %16, %1
  %25 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %26 = bitcast %struct.alias_link* %25 to %struct.server*
  %27 = call i32 @ClearFWHole(%struct.server* %26)
  %28 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %29 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %28, i32 0, i32 5
  %30 = load %struct.alias_link*, %struct.alias_link** %29, align 8
  %31 = icmp ne %struct.alias_link* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %24
  %33 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %34 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %33, i32 0, i32 5
  %35 = load %struct.alias_link*, %struct.alias_link** %34, align 8
  %36 = bitcast %struct.alias_link* %35 to %struct.server*
  store %struct.server* %36, %struct.server** %5, align 8
  store %struct.server* %36, %struct.server** %4, align 8
  br label %37

37:                                               ; preds = %43, %32
  %38 = load %struct.server*, %struct.server** %5, align 8
  %39 = getelementptr inbounds %struct.server, %struct.server* %38, i32 0, i32 4
  %40 = load %struct.server*, %struct.server** %39, align 8
  store %struct.server* %40, %struct.server** %6, align 8
  %41 = load %struct.server*, %struct.server** %5, align 8
  %42 = call i32 @free(%struct.server* %41)
  br label %43

43:                                               ; preds = %37
  %44 = load %struct.server*, %struct.server** %6, align 8
  store %struct.server* %44, %struct.server** %5, align 8
  %45 = load %struct.server*, %struct.server** %4, align 8
  %46 = icmp ne %struct.server* %44, %45
  br i1 %46, label %37, label %47

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %24
  %49 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %50 = bitcast %struct.alias_link* %49 to %struct.server*
  %51 = load i32, i32* @list_out, align 4
  %52 = call i32 @LIST_REMOVE(%struct.server* %50, i32 %51)
  %53 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %54 = bitcast %struct.alias_link* %53 to %struct.server*
  %55 = load i32, i32* @list_in, align 4
  %56 = call i32 @LIST_REMOVE(%struct.server* %54, i32 %55)
  %57 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %58 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %70

61:                                               ; preds = %48
  %62 = load %struct.libalias*, %struct.libalias** %3, align 8
  %63 = getelementptr inbounds %struct.libalias, %struct.libalias* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %67 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @close(i32 %68)
  br label %70

70:                                               ; preds = %61, %48
  %71 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %72 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %122 [
    i32 131, label %74
    i32 128, label %79
    i32 129, label %84
    i32 130, label %94
    i32 133, label %99
    i32 132, label %104
    i32 134, label %121
  ]

74:                                               ; preds = %70
  %75 = load %struct.libalias*, %struct.libalias** %3, align 8
  %76 = getelementptr inbounds %struct.libalias, %struct.libalias* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  br label %127

79:                                               ; preds = %70
  %80 = load %struct.libalias*, %struct.libalias** %3, align 8
  %81 = getelementptr inbounds %struct.libalias, %struct.libalias* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 8
  br label %127

84:                                               ; preds = %70
  %85 = load %struct.libalias*, %struct.libalias** %3, align 8
  %86 = getelementptr inbounds %struct.libalias, %struct.libalias* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %90 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load %struct.server*, %struct.server** %91, align 8
  %93 = call i32 @free(%struct.server* %92)
  br label %127

94:                                               ; preds = %70
  %95 = load %struct.libalias*, %struct.libalias** %3, align 8
  %96 = getelementptr inbounds %struct.libalias, %struct.libalias* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 8
  br label %127

99:                                               ; preds = %70
  %100 = load %struct.libalias*, %struct.libalias** %3, align 8
  %101 = getelementptr inbounds %struct.libalias, %struct.libalias* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 4
  br label %127

104:                                              ; preds = %70
  %105 = load %struct.libalias*, %struct.libalias** %3, align 8
  %106 = getelementptr inbounds %struct.libalias, %struct.libalias* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %110 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load %struct.server*, %struct.server** %111, align 8
  %113 = icmp ne %struct.server* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %116 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load %struct.server*, %struct.server** %117, align 8
  %119 = call i32 @free(%struct.server* %118)
  br label %120

120:                                              ; preds = %114, %104
  br label %127

121:                                              ; preds = %70
  br label %127

122:                                              ; preds = %70
  %123 = load %struct.libalias*, %struct.libalias** %3, align 8
  %124 = getelementptr inbounds %struct.libalias, %struct.libalias* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %121, %120, %99, %94, %84, %79, %74
  %128 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %129 = bitcast %struct.alias_link* %128 to %struct.server*
  %130 = call i32 @free(%struct.server* %129)
  %131 = load %struct.libalias*, %struct.libalias** %3, align 8
  %132 = getelementptr inbounds %struct.libalias, %struct.libalias* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PKT_ALIAS_LOG, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load %struct.libalias*, %struct.libalias** %3, align 8
  %139 = call i32 @ShowAliasStats(%struct.libalias* %138)
  br label %140

140:                                              ; preds = %23, %137, %127
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @ClearFWHole(%struct.server*) #1

declare dso_local i32 @free(%struct.server*) #1

declare dso_local i32 @LIST_REMOVE(%struct.server*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ShowAliasStats(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

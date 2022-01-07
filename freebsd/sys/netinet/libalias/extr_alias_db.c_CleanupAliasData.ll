; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_CleanupAliasData.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_CleanupAliasData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i64, i32* }
%struct.alias_link = type { i32 }

@LINK_TABLE_OUT_SIZE = common dso_local global i32 0, align 4
@list_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*)* @CleanupAliasData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CleanupAliasData(%struct.libalias* %0) #0 {
  %2 = alloca %struct.libalias*, align 8
  %3 = alloca %struct.alias_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alias_link*, align 8
  store %struct.libalias* %0, %struct.libalias** %2, align 8
  %6 = load %struct.libalias*, %struct.libalias** %2, align 8
  %7 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %31, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LINK_TABLE_OUT_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load %struct.libalias*, %struct.libalias** %2, align 8
  %14 = getelementptr inbounds %struct.libalias, %struct.libalias* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call %struct.alias_link* @LIST_FIRST(i32* %18)
  store %struct.alias_link* %19, %struct.alias_link** %3, align 8
  br label %20

20:                                               ; preds = %23, %12
  %21 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %22 = icmp ne %struct.alias_link* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %25 = load i32, i32* @list_out, align 4
  %26 = call %struct.alias_link* @LIST_NEXT(%struct.alias_link* %24, i32 %25)
  store %struct.alias_link* %26, %struct.alias_link** %5, align 8
  %27 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %28 = call i32 @DeleteLink(%struct.alias_link* %27)
  %29 = load %struct.alias_link*, %struct.alias_link** %5, align 8
  store %struct.alias_link* %29, %struct.alias_link** %3, align 8
  br label %20

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load %struct.libalias*, %struct.libalias** %2, align 8
  %36 = getelementptr inbounds %struct.libalias, %struct.libalias* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @LIST_FIRST(i32*) #1

declare dso_local %struct.alias_link* @LIST_NEXT(%struct.alias_link*, i32) #1

declare dso_local i32 @DeleteLink(%struct.alias_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

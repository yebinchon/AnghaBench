; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasRedirectDelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasRedirectDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.alias_link = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LibAliasRedirectDelete(%struct.libalias* %0, %struct.alias_link* %1) #0 {
  %3 = alloca %struct.libalias*, align 8
  %4 = alloca %struct.alias_link*, align 8
  store %struct.libalias* %0, %struct.libalias** %3, align 8
  store %struct.alias_link* %1, %struct.alias_link** %4, align 8
  %5 = load %struct.libalias*, %struct.libalias** %3, align 8
  %6 = call i32 @LIBALIAS_LOCK(%struct.libalias* %5)
  %7 = load %struct.libalias*, %struct.libalias** %3, align 8
  %8 = getelementptr inbounds %struct.libalias, %struct.libalias* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.alias_link*, %struct.alias_link** %4, align 8
  %10 = call i32 @DeleteLink(%struct.alias_link* %9)
  %11 = load %struct.libalias*, %struct.libalias** %3, align 8
  %12 = getelementptr inbounds %struct.libalias, %struct.libalias* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.libalias*, %struct.libalias** %3, align 8
  %14 = call i32 @LIBALIAS_UNLOCK(%struct.libalias* %13)
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK(%struct.libalias*) #1

declare dso_local i32 @DeleteLink(%struct.alias_link*) #1

declare dso_local i32 @LIBALIAS_UNLOCK(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

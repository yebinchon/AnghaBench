; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_AddPptp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_AddPptp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32 }
%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }

@GET_ALIAS_PORT = common dso_local global i32 0, align 4
@LINK_PPTP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.alias_link* @AddPptp(%struct.libalias* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca %struct.in_addr, align 4
  %9 = alloca %struct.libalias*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.alias_link*, align 8
  %12 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.libalias* %0, %struct.libalias** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.libalias*, %struct.libalias** %9, align 8
  %16 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %15)
  %17 = load %struct.libalias*, %struct.libalias** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @GET_ALIAS_PORT, align 4
  %20 = load i32, i32* @LINK_PPTP, align 4
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.alias_link* @AddLink(%struct.libalias* %17, i32 %22, i32 %24, i32 %26, i32 %18, i32 0, i32 %19, i32 %20)
  store %struct.alias_link* %27, %struct.alias_link** %11, align 8
  %28 = load %struct.alias_link*, %struct.alias_link** %11, align 8
  ret %struct.alias_link* %28
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @AddLink(%struct.libalias*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

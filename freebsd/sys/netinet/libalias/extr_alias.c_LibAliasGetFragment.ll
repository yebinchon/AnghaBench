; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasGetFragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasGetFragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.alias_link = type { i32 }
%struct.ip = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @LibAliasGetFragment(%struct.libalias* %0, i8* %1) #0 {
  %3 = alloca %struct.libalias*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.alias_link*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ip*, align 8
  store %struct.libalias* %0, %struct.libalias** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.libalias*, %struct.libalias** %3, align 8
  %9 = call i32 @LIBALIAS_LOCK(%struct.libalias* %8)
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ip*
  store %struct.ip* %11, %struct.ip** %7, align 8
  %12 = load %struct.libalias*, %struct.libalias** %3, align 8
  %13 = load %struct.ip*, %struct.ip** %7, align 8
  %14 = getelementptr inbounds %struct.ip, %struct.ip* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ip*, %struct.ip** %7, align 8
  %17 = getelementptr inbounds %struct.ip, %struct.ip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.alias_link* @FindFragmentPtr(%struct.libalias* %12, i32 %15, i32 %18)
  store %struct.alias_link* %19, %struct.alias_link** %5, align 8
  %20 = load %struct.alias_link*, %struct.alias_link** %5, align 8
  %21 = icmp ne %struct.alias_link* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.alias_link*, %struct.alias_link** %5, align 8
  %24 = call i32 @GetFragmentPtr(%struct.alias_link* %23, i8** %6)
  %25 = load %struct.alias_link*, %struct.alias_link** %5, align 8
  %26 = call i32 @SetFragmentPtr(%struct.alias_link* %25, i32* null)
  %27 = load %struct.alias_link*, %struct.alias_link** %5, align 8
  %28 = call i32 @SetExpire(%struct.alias_link* %27, i32 0)
  br label %30

29:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  br label %30

30:                                               ; preds = %29, %22
  %31 = load %struct.libalias*, %struct.libalias** %3, align 8
  %32 = call i32 @LIBALIAS_UNLOCK(%struct.libalias* %31)
  %33 = load i8*, i8** %6, align 8
  ret i8* %33
}

declare dso_local i32 @LIBALIAS_LOCK(%struct.libalias*) #1

declare dso_local %struct.alias_link* @FindFragmentPtr(%struct.libalias*, i32, i32) #1

declare dso_local i32 @GetFragmentPtr(%struct.alias_link*, i8**) #1

declare dso_local i32 @SetFragmentPtr(%struct.alias_link*, i32*) #1

declare dso_local i32 @SetExpire(%struct.alias_link*, i32) #1

declare dso_local i32 @LIBALIAS_UNLOCK(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

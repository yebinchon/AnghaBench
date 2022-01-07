; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_nbt.c_fingerprint2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_nbt.c_fingerprint2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.alias_data = type { i32*, i32*, i32*, i32*, i32* }

@NETBIOS_NS_PORT_NUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.alias_data*)* @fingerprint2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fingerprint2(%struct.libalias* %0, %struct.alias_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.alias_data*, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.alias_data* %1, %struct.alias_data** %5, align 8
  %6 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %7 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %12 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %17 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %22 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %27 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20, %15, %10, %2
  store i32 -1, i32* %3, align 4
  br label %49

31:                                               ; preds = %25
  %32 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %33 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ntohs(i32 %35)
  %37 = load i64, i64* @NETBIOS_NS_PORT_NUMBER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %41 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ntohs(i32 %43)
  %45 = load i64, i64* @NETBIOS_NS_PORT_NUMBER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %31
  store i32 0, i32* %3, align 4
  br label %49

48:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47, %30
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

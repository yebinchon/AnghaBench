; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_data_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_data_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 (%struct.ifnet*, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.if_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32 }

@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@IFCOUNTER_IBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_IMCASTS = common dso_local global i32 0, align 4
@IFCOUNTER_OMCASTS = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFCOUNTER_OQDROPS = common dso_local global i32 0, align 4
@IFCOUNTER_NOPROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_data_copy(%struct.ifnet* %0, %struct.if_data* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.if_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.if_data* %1, %struct.if_data** %4, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.if_data*, %struct.if_data** %4, align 8
  %9 = getelementptr inbounds %struct.if_data, %struct.if_data* %8, i32 0, i32 24
  store i32 %7, i32* %9, align 8
  %10 = load %struct.if_data*, %struct.if_data** %4, align 8
  %11 = getelementptr inbounds %struct.if_data, %struct.if_data* %10, i32 0, i32 23
  store i64 0, i64* %11, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.if_data*, %struct.if_data** %4, align 8
  %16 = getelementptr inbounds %struct.if_data, %struct.if_data* %15, i32 0, i32 22
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.if_data*, %struct.if_data** %4, align 8
  %21 = getelementptr inbounds %struct.if_data, %struct.if_data* %20, i32 0, i32 21
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.if_data*, %struct.if_data** %4, align 8
  %26 = getelementptr inbounds %struct.if_data, %struct.if_data* %25, i32 0, i32 20
  store i32 %24, i32* %26, align 8
  %27 = load %struct.if_data*, %struct.if_data** %4, align 8
  %28 = getelementptr inbounds %struct.if_data, %struct.if_data* %27, i32 0, i32 19
  store i64 0, i64* %28, align 8
  %29 = load %struct.if_data*, %struct.if_data** %4, align 8
  %30 = getelementptr inbounds %struct.if_data, %struct.if_data* %29, i32 0, i32 0
  store i32 120, i32* %30, align 8
  %31 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.if_data*, %struct.if_data** %4, align 8
  %35 = getelementptr inbounds %struct.if_data, %struct.if_data* %34, i32 0, i32 18
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.if_data*, %struct.if_data** %4, align 8
  %40 = getelementptr inbounds %struct.if_data, %struct.if_data* %39, i32 0, i32 17
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.if_data*, %struct.if_data** %4, align 8
  %45 = getelementptr inbounds %struct.if_data, %struct.if_data* %44, i32 0, i32 16
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.if_data*, %struct.if_data** %4, align 8
  %50 = getelementptr inbounds %struct.if_data, %struct.if_data* %49, i32 0, i32 15
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.if_data*, %struct.if_data** %4, align 8
  %55 = getelementptr inbounds %struct.if_data, %struct.if_data* %54, i32 0, i32 14
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.if_data*, %struct.if_data** %4, align 8
  %60 = getelementptr inbounds %struct.if_data, %struct.if_data* %59, i32 0, i32 13
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %62, align 8
  %64 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %65 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %66 = call i32 %63(%struct.ifnet* %64, i32 %65)
  %67 = load %struct.if_data*, %struct.if_data** %4, align 8
  %68 = getelementptr inbounds %struct.if_data, %struct.if_data* %67, i32 0, i32 12
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 0
  %71 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %70, align 8
  %72 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %73 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %74 = call i32 %71(%struct.ifnet* %72, i32 %73)
  %75 = load %struct.if_data*, %struct.if_data** %4, align 8
  %76 = getelementptr inbounds %struct.if_data, %struct.if_data* %75, i32 0, i32 11
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 0
  %79 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %78, align 8
  %80 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %81 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %82 = call i32 %79(%struct.ifnet* %80, i32 %81)
  %83 = load %struct.if_data*, %struct.if_data** %4, align 8
  %84 = getelementptr inbounds %struct.if_data, %struct.if_data* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 0
  %87 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %86, align 8
  %88 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %89 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %90 = call i32 %87(%struct.ifnet* %88, i32 %89)
  %91 = load %struct.if_data*, %struct.if_data** %4, align 8
  %92 = getelementptr inbounds %struct.if_data, %struct.if_data* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 0
  %95 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %94, align 8
  %96 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %97 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %98 = call i32 %95(%struct.ifnet* %96, i32 %97)
  %99 = load %struct.if_data*, %struct.if_data** %4, align 8
  %100 = getelementptr inbounds %struct.if_data, %struct.if_data* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %102 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %101, i32 0, i32 0
  %103 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %102, align 8
  %104 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %105 = load i32, i32* @IFCOUNTER_IBYTES, align 4
  %106 = call i32 %103(%struct.ifnet* %104, i32 %105)
  %107 = load %struct.if_data*, %struct.if_data** %4, align 8
  %108 = getelementptr inbounds %struct.if_data, %struct.if_data* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  %109 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %110 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %109, i32 0, i32 0
  %111 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %110, align 8
  %112 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %113 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %114 = call i32 %111(%struct.ifnet* %112, i32 %113)
  %115 = load %struct.if_data*, %struct.if_data** %4, align 8
  %116 = getelementptr inbounds %struct.if_data, %struct.if_data* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 0
  %119 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %118, align 8
  %120 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %121 = load i32, i32* @IFCOUNTER_IMCASTS, align 4
  %122 = call i32 %119(%struct.ifnet* %120, i32 %121)
  %123 = load %struct.if_data*, %struct.if_data** %4, align 8
  %124 = getelementptr inbounds %struct.if_data, %struct.if_data* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %126 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %125, i32 0, i32 0
  %127 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %126, align 8
  %128 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %129 = load i32, i32* @IFCOUNTER_OMCASTS, align 4
  %130 = call i32 %127(%struct.ifnet* %128, i32 %129)
  %131 = load %struct.if_data*, %struct.if_data** %4, align 8
  %132 = getelementptr inbounds %struct.if_data, %struct.if_data* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %134 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %133, i32 0, i32 0
  %135 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %134, align 8
  %136 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %137 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %138 = call i32 %135(%struct.ifnet* %136, i32 %137)
  %139 = load %struct.if_data*, %struct.if_data** %4, align 8
  %140 = getelementptr inbounds %struct.if_data, %struct.if_data* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %142 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %141, i32 0, i32 0
  %143 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %142, align 8
  %144 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %145 = load i32, i32* @IFCOUNTER_OQDROPS, align 4
  %146 = call i32 %143(%struct.ifnet* %144, i32 %145)
  %147 = load %struct.if_data*, %struct.if_data** %4, align 8
  %148 = getelementptr inbounds %struct.if_data, %struct.if_data* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %150 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %149, i32 0, i32 0
  %151 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %150, align 8
  %152 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %153 = load i32, i32* @IFCOUNTER_NOPROTO, align 4
  %154 = call i32 %151(%struct.ifnet* %152, i32 %153)
  %155 = load %struct.if_data*, %struct.if_data** %4, align 8
  %156 = getelementptr inbounds %struct.if_data, %struct.if_data* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_add_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_add_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_command = type { i32, i32, i64, i32*, i32, %struct.mpr_softc* }
%struct.mpr_softc = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.mpr_chain = type { i32, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }

@MPR_CM_FLAGS_SGE_SIMPLE = common dso_local global i32 0, align 4
@MPR_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"A chain element cannot be added to an MPI SGL.\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"MPR: Need SGE Error Code\0A\00", align 1
@chain_link = common dso_local global i32 0, align 4
@MPI2_IEEE_SGE_FLAGS_CHAIN_ELEMENT = common dso_local global i32 0, align 4
@MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_command*, i32)* @mpr_add_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_add_chain(%struct.mpr_command* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpr_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpr_softc*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.mpr_chain*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mpr_command* %0, %struct.mpr_command** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %16 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %15, i32 0, i32 5
  %17 = load %struct.mpr_softc*, %struct.mpr_softc** %16, align 8
  store %struct.mpr_softc* %17, %struct.mpr_softc** %6, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %19 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MPR_CM_FLAGS_SGE_SIMPLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.mpr_softc*, %struct.mpr_softc** %6, align 8
  %26 = load i32, i32* @MPR_ERROR, align 4
  %27 = call i32 @mpr_dprint(%struct.mpr_softc* %25, i32 %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOBUFS, align 4
  store i32 %28, i32* %3, align 4
  br label %150

29:                                               ; preds = %2
  store i32 32, i32* %10, align 4
  %30 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %31 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  %38 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %39 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %38, i32 0, i32 5
  %40 = load %struct.mpr_softc*, %struct.mpr_softc** %39, align 8
  %41 = call %struct.mpr_chain* @mpr_alloc_chain(%struct.mpr_softc* %40)
  store %struct.mpr_chain* %41, %struct.mpr_chain** %9, align 8
  %42 = load %struct.mpr_chain*, %struct.mpr_chain** %9, align 8
  %43 = icmp eq %struct.mpr_chain* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOBUFS, align 4
  store i32 %45, i32* %3, align 4
  br label %150

46:                                               ; preds = %37
  %47 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %48 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %47, i32 0, i32 4
  %49 = load %struct.mpr_chain*, %struct.mpr_chain** %9, align 8
  %50 = load i32, i32* @chain_link, align 4
  %51 = call i32 @TAILQ_INSERT_TAIL(i32* %48, %struct.mpr_chain* %49, i32 %50)
  store i32 0, i32* %12, align 4
  %52 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %53 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %55, %56
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %46
  %60 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %61 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sdiv i32 %62, %63
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %12, align 4
  %69 = load %struct.mpr_softc*, %struct.mpr_softc** %6, align 8
  %70 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %77, %59
  br label %81

81:                                               ; preds = %80, %46
  %82 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %83 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = bitcast i32* %84 to %struct.TYPE_7__*
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %8, align 8
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load %struct.mpr_softc*, %struct.mpr_softc** %6, align 8
  %91 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @htole32(i32 %92)
  br label %99

94:                                               ; preds = %81
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 %95, %96
  %98 = call i8* @htole32(i32 %97)
  br label %99

99:                                               ; preds = %94, %89
  %100 = phi i8* [ %93, %89 ], [ %98, %94 ]
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_CHAIN_ELEMENT, align 4
  %107 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.mpr_chain*, %struct.mpr_chain** %9, align 8
  %112 = getelementptr inbounds %struct.mpr_chain, %struct.mpr_chain* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i8* @htole32(i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i8* %114, i8** %117, align 8
  %118 = load %struct.mpr_chain*, %struct.mpr_chain** %9, align 8
  %119 = getelementptr inbounds %struct.mpr_chain, %struct.mpr_chain* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = ashr i32 %120, 32
  %122 = call i8* @htole32(i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load %struct.mpr_chain*, %struct.mpr_chain** %9, align 8
  %127 = getelementptr inbounds %struct.mpr_chain, %struct.mpr_chain* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.TYPE_7__*
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %132 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %131, i32 0, i32 3
  store i32* %130, i32** %132, align 8
  %133 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %134 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %136, %struct.TYPE_6__** %7, align 8
  %137 = load %struct.mpr_softc*, %struct.mpr_softc** %6, align 8
  %138 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %10, align 4
  %141 = sub nsw i32 %139, %140
  %142 = ashr i32 %141, 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load %struct.mpr_softc*, %struct.mpr_softc** %6, align 8
  %146 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %149 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %99, %44, %24
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.mpr_chain* @mpr_alloc_chain(%struct.mpr_softc*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mpr_chain*, i32) #1

declare dso_local i8* @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

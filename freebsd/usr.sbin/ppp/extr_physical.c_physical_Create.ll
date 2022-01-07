; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_25__, i64, i64, %struct.TYPE_23__, %struct.TYPE_22__, %struct.datalink*, i64, i32*, i32, i32, i32* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { i32, i32*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_23__ = type { i8*, i8* }
%struct.TYPE_22__ = type { i64 }
%struct.datalink = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@PHYSICAL_LINK = common dso_local global i32 0, align 4
@SAMPLE_PERIOD = common dso_local global i32 0, align 4
@MODEM_CTSRTS = common dso_local global i32 0, align 4
@MODEM_SPEED = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@MODEM_LIST = common dso_local global i32 0, align 4
@NMODEMS = common dso_local global i32 0, align 4
@CD_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.physical* @physical_Create(%struct.datalink* %0, i32 %1) #0 {
  %3 = alloca %struct.physical*, align 8
  %4 = alloca %struct.datalink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.physical*, align 8
  store %struct.datalink* %0, %struct.datalink** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i64 @malloc(i32 184)
  %8 = inttoptr i64 %7 to %struct.physical*
  store %struct.physical* %8, %struct.physical** %6, align 8
  %9 = load %struct.physical*, %struct.physical** %6, align 8
  %10 = icmp ne %struct.physical* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.physical* null, %struct.physical** %3, align 8
  br label %175

12:                                               ; preds = %2
  %13 = load i32, i32* @PHYSICAL_LINK, align 4
  %14 = load %struct.physical*, %struct.physical** %6, align 8
  %15 = getelementptr inbounds %struct.physical, %struct.physical* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 8
  store i32 %13, i32* %16, align 4
  %17 = load %struct.datalink*, %struct.datalink** %4, align 8
  %18 = getelementptr inbounds %struct.datalink, %struct.datalink* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.physical*, %struct.physical** %6, align 8
  %21 = getelementptr inbounds %struct.physical, %struct.physical* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 7
  store i32 %19, i32* %22, align 8
  %23 = load %struct.physical*, %struct.physical** %6, align 8
  %24 = getelementptr inbounds %struct.physical, %struct.physical* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  store i32 184, i32* %25, align 8
  %26 = load %struct.physical*, %struct.physical** %6, align 8
  %27 = getelementptr inbounds %struct.physical, %struct.physical* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = load i32, i32* @SAMPLE_PERIOD, align 4
  %31 = call i32 @throughput_init(i32* %29, i32 %30)
  %32 = load %struct.datalink*, %struct.datalink** %4, align 8
  %33 = getelementptr inbounds %struct.datalink, %struct.datalink* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %12
  %41 = load %struct.datalink*, %struct.datalink** %4, align 8
  %42 = getelementptr inbounds %struct.datalink, %struct.datalink* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  br label %50

49:                                               ; preds = %12
  br label %50

50:                                               ; preds = %49, %40
  %51 = phi i32* [ %48, %40 ], [ null, %49 ]
  %52 = load %struct.physical*, %struct.physical** %6, align 8
  %53 = getelementptr inbounds %struct.physical, %struct.physical* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  store i32* %51, i32** %55, align 8
  %56 = load %struct.physical*, %struct.physical** %6, align 8
  %57 = getelementptr inbounds %struct.physical, %struct.physical* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.physical*, %struct.physical** %6, align 8
  %61 = getelementptr inbounds %struct.physical, %struct.physical* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memset(i32 %63, i8 signext 0, i32 4)
  %65 = load %struct.physical*, %struct.physical** %6, align 8
  %66 = getelementptr inbounds %struct.physical, %struct.physical* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memset(i32 %68, i8 signext 0, i32 4)
  %70 = load %struct.physical*, %struct.physical** %6, align 8
  %71 = getelementptr inbounds %struct.physical, %struct.physical* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memset(i32 %73, i8 signext 0, i32 4)
  %75 = load %struct.physical*, %struct.physical** %6, align 8
  %76 = getelementptr inbounds %struct.physical, %struct.physical* %75, i32 0, i32 2
  %77 = call i32 @link_EmptyStack(%struct.TYPE_15__* %76)
  %78 = load %struct.physical*, %struct.physical** %6, align 8
  %79 = getelementptr inbounds %struct.physical, %struct.physical* %78, i32 0, i32 13
  store i32* null, i32** %79, align 8
  %80 = load %struct.physical*, %struct.physical** %6, align 8
  %81 = call i32 @physical_SetDescriptor(%struct.physical* %80)
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.physical*, %struct.physical** %6, align 8
  %84 = getelementptr inbounds %struct.physical, %struct.physical* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.physical*, %struct.physical** %6, align 8
  %86 = getelementptr inbounds %struct.physical, %struct.physical* %85, i32 0, i32 12
  %87 = load %struct.physical*, %struct.physical** %6, align 8
  %88 = getelementptr inbounds %struct.physical, %struct.physical* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = call i32 @hdlc_Init(i32* %86, i32* %89)
  %91 = load %struct.physical*, %struct.physical** %6, align 8
  %92 = getelementptr inbounds %struct.physical, %struct.physical* %91, i32 0, i32 11
  %93 = call i32 @async_Init(i32* %92)
  %94 = load %struct.physical*, %struct.physical** %6, align 8
  %95 = getelementptr inbounds %struct.physical, %struct.physical* %94, i32 0, i32 1
  store i32 -1, i32* %95, align 4
  %96 = load %struct.physical*, %struct.physical** %6, align 8
  %97 = getelementptr inbounds %struct.physical, %struct.physical* %96, i32 0, i32 10
  store i32* null, i32** %97, align 8
  %98 = load %struct.physical*, %struct.physical** %6, align 8
  %99 = getelementptr inbounds %struct.physical, %struct.physical* %98, i32 0, i32 9
  store i64 0, i64* %99, align 8
  %100 = load %struct.datalink*, %struct.datalink** %4, align 8
  %101 = load %struct.physical*, %struct.physical** %6, align 8
  %102 = getelementptr inbounds %struct.physical, %struct.physical* %101, i32 0, i32 8
  store %struct.datalink* %100, %struct.datalink** %102, align 8
  %103 = load %struct.physical*, %struct.physical** %6, align 8
  %104 = getelementptr inbounds %struct.physical, %struct.physical* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load %struct.physical*, %struct.physical** %6, align 8
  %107 = getelementptr inbounds %struct.physical, %struct.physical* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  store i8 0, i8* %109, align 1
  %110 = load %struct.physical*, %struct.physical** %6, align 8
  %111 = getelementptr inbounds %struct.physical, %struct.physical* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.physical*, %struct.physical** %6, align 8
  %115 = getelementptr inbounds %struct.physical, %struct.physical* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  %117 = load %struct.physical*, %struct.physical** %6, align 8
  %118 = getelementptr inbounds %struct.physical, %struct.physical* %117, i32 0, i32 5
  store i64 0, i64* %118, align 8
  %119 = load %struct.physical*, %struct.physical** %6, align 8
  %120 = getelementptr inbounds %struct.physical, %struct.physical* %119, i32 0, i32 4
  store i64 -1, i64* %120, align 8
  %121 = load i32, i32* @MODEM_CTSRTS, align 4
  %122 = load %struct.physical*, %struct.physical** %6, align 8
  %123 = getelementptr inbounds %struct.physical, %struct.physical* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 5
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* @MODEM_SPEED, align 4
  %126 = load %struct.physical*, %struct.physical** %6, align 8
  %127 = getelementptr inbounds %struct.physical, %struct.physical* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 4
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @CS8, align 4
  %130 = load %struct.physical*, %struct.physical** %6, align 8
  %131 = getelementptr inbounds %struct.physical, %struct.physical* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 8
  %133 = load %struct.physical*, %struct.physical** %6, align 8
  %134 = getelementptr inbounds %struct.physical, %struct.physical* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MODEM_LIST, align 4
  %138 = call i32 @memcpy(i32 %136, i32 %137, i32 4)
  %139 = load i32, i32* @NMODEMS, align 4
  %140 = load %struct.physical*, %struct.physical** %6, align 8
  %141 = getelementptr inbounds %struct.physical, %struct.physical* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 8
  %143 = load i32, i32* @CD_DEFAULT, align 4
  %144 = load %struct.physical*, %struct.physical** %6, align 8
  %145 = getelementptr inbounds %struct.physical, %struct.physical* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 8
  %148 = load %struct.physical*, %struct.physical** %6, align 8
  %149 = getelementptr inbounds %struct.physical, %struct.physical* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  %152 = load %struct.physical*, %struct.physical** %6, align 8
  %153 = getelementptr inbounds %struct.physical, %struct.physical* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = load %struct.datalink*, %struct.datalink** %4, align 8
  %156 = getelementptr inbounds %struct.datalink, %struct.datalink* %155, i32 0, i32 1
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = load %struct.physical*, %struct.physical** %6, align 8
  %159 = getelementptr inbounds %struct.physical, %struct.physical* %158, i32 0, i32 2
  %160 = load %struct.datalink*, %struct.datalink** %4, align 8
  %161 = getelementptr inbounds %struct.datalink, %struct.datalink* %160, i32 0, i32 0
  %162 = call i32 @lcp_Init(i32* %154, %struct.TYPE_16__* %157, %struct.TYPE_15__* %159, i32* %161)
  %163 = load %struct.physical*, %struct.physical** %6, align 8
  %164 = getelementptr inbounds %struct.physical, %struct.physical* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load %struct.datalink*, %struct.datalink** %4, align 8
  %167 = getelementptr inbounds %struct.datalink, %struct.datalink* %166, i32 0, i32 1
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = load %struct.physical*, %struct.physical** %6, align 8
  %170 = getelementptr inbounds %struct.physical, %struct.physical* %169, i32 0, i32 2
  %171 = load %struct.datalink*, %struct.datalink** %4, align 8
  %172 = getelementptr inbounds %struct.datalink, %struct.datalink* %171, i32 0, i32 0
  %173 = call i32 @ccp_Init(i32* %165, %struct.TYPE_16__* %168, %struct.TYPE_15__* %170, i32* %172)
  %174 = load %struct.physical*, %struct.physical** %6, align 8
  store %struct.physical* %174, %struct.physical** %3, align 8
  br label %175

175:                                              ; preds = %50, %11
  %176 = load %struct.physical*, %struct.physical** %3, align 8
  ret %struct.physical* %176
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @throughput_init(i32*, i32) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @link_EmptyStack(%struct.TYPE_15__*) #1

declare dso_local i32 @physical_SetDescriptor(%struct.physical*) #1

declare dso_local i32 @hdlc_Init(i32*, i32*) #1

declare dso_local i32 @async_Init(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @lcp_Init(i32*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @ccp_Init(i32*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

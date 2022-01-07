; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i64, i64, i8*, {}*, i32, i32, i32, i32, i32, i32, %struct.netmap_adapter* }
%struct.netmap_adapter = type { i8*, %struct.netmap_kring**, %struct.netmap_bwrap_adapter* }
%struct.netmap_bwrap_adapter = type { %struct.netmap_adapter* }

@.str = private unnamed_addr constant [18 x i8] c"%s: na %s hwna %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"NULL!\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"%s[%d] PRE rx(c%3d t%3d l%3d) ring(h%3d c%3d t%3d) tx(c%3d ht%3d t%3d)\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"%s[%d] PST rx(c%3d t%3d l%3d) ring(h%3d c%3d t%3d) tx(c%3d ht%3d t%3d)\00", align 1
@NM_IRQ_COMPLETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_bwrap_notify(%struct.netmap_kring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netmap_kring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netmap_adapter*, align 8
  %7 = alloca %struct.netmap_bwrap_adapter*, align 8
  %8 = alloca %struct.netmap_adapter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.netmap_kring*, align 8
  %12 = alloca i32, align 4
  store %struct.netmap_kring* %0, %struct.netmap_kring** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %14 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %13, i32 0, i32 10
  %15 = load %struct.netmap_adapter*, %struct.netmap_adapter** %14, align 8
  store %struct.netmap_adapter* %15, %struct.netmap_adapter** %6, align 8
  %16 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %16, i32 0, i32 2
  %18 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %17, align 8
  store %struct.netmap_bwrap_adapter* %18, %struct.netmap_bwrap_adapter** %7, align 8
  %19 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %20 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %19, i32 0, i32 0
  %21 = load %struct.netmap_adapter*, %struct.netmap_adapter** %20, align 8
  store %struct.netmap_adapter* %21, %struct.netmap_adapter** %8, align 8
  %22 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %23 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %26 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %27, 1
  store i64 %28, i64* %10, align 8
  %29 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %30 = icmp ne %struct.netmap_kring* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %33 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %35 ]
  %38 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %39 = icmp ne %struct.netmap_adapter* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i8* [ %43, %40 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %44 ]
  %47 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %48 = icmp ne %struct.netmap_adapter* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %51 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8* [ %52, %49 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %53 ]
  %56 = call i32 (i8*, i8*, ...) @nm_prdis(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %46, i8* %55)
  %57 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %58 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %57, i32 0, i32 1
  %59 = load %struct.netmap_kring**, %struct.netmap_kring*** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %59, i64 %60
  %62 = load %struct.netmap_kring*, %struct.netmap_kring** %61, align 8
  store %struct.netmap_kring* %62, %struct.netmap_kring** %11, align 8
  %63 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %64 = call i64 @nm_kr_tryget(%struct.netmap_kring* %63, i32 0, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %3, align 4
  br label %177

68:                                               ; preds = %54
  %69 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @netmap_vp_rxsync(%struct.netmap_kring* %69, i32 %70)
  %72 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %73 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %77 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %80 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %83 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %86 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %89 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %92 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %95 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %98 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %101 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, i8*, ...) @nm_prdis(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* %74, i64 %75, i32 %78, i32 %81, i32 %84, i32 %87, i32 %90, i32 %93, i32 %96, i32 %99, i32 %102)
  %104 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %105 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %108 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  %109 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %110 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %109, i32 0, i32 8
  store i32 %106, i32* %110, align 8
  %111 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %112 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %111, i32 0, i32 3
  %113 = bitcast {}** %112 to i32 (%struct.netmap_kring*, i32)**
  %114 = load i32 (%struct.netmap_kring*, i32)*, i32 (%struct.netmap_kring*, i32)** %113, align 8
  %115 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 %114(%struct.netmap_kring* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %68
  br label %166

121:                                              ; preds = %68
  %122 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %123 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @nm_next(i32 %124, i64 %125)
  %127 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %128 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 4
  %129 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %130 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %129, i32 0, i32 8
  store i32 %126, i32* %130, align 8
  %131 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @netmap_vp_rxsync(%struct.netmap_kring* %131, i32 %132)
  %134 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %135 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %139 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %142 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %145 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %148 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %151 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %154 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %157 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %160 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %163 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i8*, i8*, ...) @nm_prdis(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i8* %136, i64 %137, i32 %140, i32 %143, i32 %146, i32 %149, i32 %152, i32 %155, i32 %158, i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %121, %120
  %167 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  %168 = call i32 @nm_kr_put(%struct.netmap_kring* %167)
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* %12, align 4
  br label %175

173:                                              ; preds = %166
  %174 = load i32, i32* @NM_IRQ_COMPLETED, align 4
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32 [ %172, %171 ], [ %174, %173 ]
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %66
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @nm_prdis(i8*, i8*, ...) #1

declare dso_local i64 @nm_kr_tryget(%struct.netmap_kring*, i32, i32*) #1

declare dso_local i32 @netmap_vp_rxsync(%struct.netmap_kring*, i32) #1

declare dso_local i32 @nm_next(i32, i64) #1

declare dso_local i32 @nm_kr_put(%struct.netmap_kring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_check_and_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_check_and_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_concat_softc = type { i64, i64, %struct.g_provider*, %struct.g_concat_disk*, i32, i32 }
%struct.g_provider = type { i32, i64, i64, i32, i32, i32 }
%struct.g_concat_disk = type { i64, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.g_provider* }

@.str = private unnamed_addr constant [10 x i8] c"concat/%s\00", align 1
@G_PF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_PF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@G_PF_ACCEPT_UNMAPPED = common dso_local global i32 0, align 4
@G_CONCAT_TYPE_AUTOMATIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"GEOM::candelete\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to access disk %s, error %d.\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Cancelling unmapped because of %s.\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Device %s activated.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_concat_softc*)* @g_concat_check_and_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_concat_check_and_run(%struct.g_concat_softc* %0) #0 {
  %2 = alloca %struct.g_concat_softc*, align 8
  %3 = alloca %struct.g_concat_disk*, align 8
  %4 = alloca %struct.g_provider*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.g_concat_softc* %0, %struct.g_concat_softc** %2, align 8
  store i64 0, i64* %7, align 8
  %10 = call i32 (...) @g_topology_assert()
  %11 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %12 = call i64 @g_concat_nvalid(%struct.g_concat_softc* %11)
  %13 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %14 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %190

18:                                               ; preds = %1
  %19 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %20 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %23 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.g_provider* @g_new_providerf(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24)
  store %struct.g_provider* %25, %struct.g_provider** %5, align 8
  %26 = load i32, i32* @G_PF_DIRECT_SEND, align 4
  %27 = load i32, i32* @G_PF_DIRECT_RECEIVE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @G_PF_ACCEPT_UNMAPPED, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %32 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %144, %18
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %38 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %147

41:                                               ; preds = %35
  %42 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %43 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %42, i32 0, i32 3
  %44 = load %struct.g_concat_disk*, %struct.g_concat_disk** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %44, i64 %45
  store %struct.g_concat_disk* %46, %struct.g_concat_disk** %3, align 8
  %47 = load %struct.g_concat_disk*, %struct.g_concat_disk** %3, align 8
  %48 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.g_provider*, %struct.g_provider** %50, align 8
  store %struct.g_provider* %51, %struct.g_provider** %4, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.g_concat_disk*, %struct.g_concat_disk** %3, align 8
  %55 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.g_concat_disk*, %struct.g_concat_disk** %3, align 8
  %57 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %60 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %58, %61
  %63 = load %struct.g_concat_disk*, %struct.g_concat_disk** %3, align 8
  %64 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %66 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @G_CONCAT_TYPE_AUTOMATIC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %41
  %71 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %72 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.g_concat_disk*, %struct.g_concat_disk** %3, align 8
  %75 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %70, %41
  %79 = load %struct.g_concat_disk*, %struct.g_concat_disk** %3, align 8
  %80 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %8, align 8
  %83 = load %struct.g_concat_disk*, %struct.g_concat_disk** %3, align 8
  %84 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = call i32 @g_access(%struct.TYPE_3__* %85, i32 1, i32 0, i32 0)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %78
  %90 = load %struct.g_concat_disk*, %struct.g_concat_disk** %3, align 8
  %91 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load %struct.g_concat_disk*, %struct.g_concat_disk** %3, align 8
  %94 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %93, i32 0, i32 3
  %95 = call i32 @g_getattr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %92, i64* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load %struct.g_concat_disk*, %struct.g_concat_disk** %3, align 8
  %100 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %89
  %102 = load %struct.g_concat_disk*, %struct.g_concat_disk** %3, align 8
  %103 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = call i32 @g_access(%struct.TYPE_3__* %104, i32 -1, i32 0, i32 0)
  br label %112

106:                                              ; preds = %78
  %107 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %108 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (i32, i8*, i32, ...) @G_CONCAT_DEBUG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %101
  %113 = load i64, i64* %6, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %117 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %7, align 8
  br label %125

119:                                              ; preds = %112
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %122 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @lcm(i64 %120, i64 %123)
  store i64 %124, i64* %7, align 8
  br label %125

125:                                              ; preds = %119, %115
  %126 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %127 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @G_PF_ACCEPT_UNMAPPED, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %125
  %133 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %134 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32, i8*, i32, ...) @G_CONCAT_DEBUG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @G_PF_ACCEPT_UNMAPPED, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %140 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %132, %125
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %6, align 8
  br label %35

147:                                              ; preds = %35
  %148 = load i64, i64* %7, align 8
  %149 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %150 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = ptrtoint i8* %151 to i64
  %153 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %154 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %156 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %155, i32 0, i32 3
  %157 = load %struct.g_concat_disk*, %struct.g_concat_disk** %156, align 8
  %158 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %157, i64 0
  %159 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %158, i32 0, i32 2
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load %struct.g_provider*, %struct.g_provider** %161, align 8
  %163 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %166 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 8
  %167 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %168 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %167, i32 0, i32 3
  %169 = load %struct.g_concat_disk*, %struct.g_concat_disk** %168, align 8
  %170 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %169, i64 0
  %171 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %170, i32 0, i32 2
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load %struct.g_provider*, %struct.g_provider** %173, align 8
  %175 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %178 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 4
  %179 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %180 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %181 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %180, i32 0, i32 2
  store %struct.g_provider* %179, %struct.g_provider** %181, align 8
  %182 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %183 = call i32 @g_error_provider(%struct.g_provider* %182, i32 0)
  %184 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %185 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %184, i32 0, i32 2
  %186 = load %struct.g_provider*, %struct.g_provider** %185, align 8
  %187 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i32, i8*, i32, ...) @G_CONCAT_DEBUG(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %147, %17
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i64 @g_concat_nvalid(%struct.g_concat_softc*) #1

declare dso_local %struct.g_provider* @g_new_providerf(i32, i8*, i32) #1

declare dso_local i32 @g_access(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @g_getattr(i8*, %struct.TYPE_3__*, i64*) #1

declare dso_local i32 @G_CONCAT_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i64 @lcm(i64, i64) #1

declare dso_local i32 @g_error_provider(%struct.g_provider*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

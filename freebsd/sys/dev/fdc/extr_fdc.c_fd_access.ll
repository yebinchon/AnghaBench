; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.fd_data* }
%struct.fd_data = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.fdc_data* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.fdc_data = type { i32 }

@G_PF_WITHER = common dso_local global i32 0, align 4
@FDOPT_NORETRY = common dso_local global i32 0, align 4
@FDOPT_NOERRLOG = common dso_local global i32 0, align 4
@FDOPT_NOERROR = common dso_local global i32 0, align 4
@BIO_PROBE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FD_EMPTY = common dso_local global i32 0, align 4
@FD_NEWDISK = common dso_local global i32 0, align 4
@FD_NO_CHLINE = common dso_local global i32 0, align 4
@FD_WP = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @fd_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd_data*, align 8
  %11 = alloca %struct.fdc_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.g_provider* %0, %struct.g_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %17 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %16, i32 0, i32 7
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.fd_data*, %struct.fd_data** %19, align 8
  store %struct.fd_data* %20, %struct.fd_data** %10, align 8
  %21 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %22 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %21, i32 0, i32 5
  %23 = load %struct.fdc_data*, %struct.fdc_data** %22, align 8
  store %struct.fdc_data* %23, %struct.fdc_data** %11, align 8
  %24 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @G_PF_WITHER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %205

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %34 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %39 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %44 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %31
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i32, i32* @FDOPT_NORETRY, align 4
  %57 = load i32, i32* @FDOPT_NOERRLOG, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @FDOPT_NOERROR, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %63 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %67 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @device_unbusy(i32 %68)
  store i32 0, i32* %5, align 4
  br label %205

70:                                               ; preds = %52, %49, %31
  store i32 0, i32* %15, align 4
  %71 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %72 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %151

75:                                               ; preds = %70
  %76 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %77 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %151

80:                                               ; preds = %75
  %81 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %82 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %151

85:                                               ; preds = %80
  %86 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %87 = load i32, i32* @BIO_PROBE, align 4
  %88 = call i64 @fdmisccmd(%struct.fd_data* %86, i32 %87, i32* null)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %5, align 4
  br label %205

92:                                               ; preds = %85
  %93 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %94 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @FD_EMPTY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %5, align 4
  br label %205

101:                                              ; preds = %92
  %102 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %103 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @FD_NEWDISK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %146

108:                                              ; preds = %101
  %109 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %110 = call i64 @fdautoselect(%struct.fd_data* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %108
  %113 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %114 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @device_get_flags(i32 %115)
  %117 = load i32, i32* @FD_NO_CHLINE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %112
  %121 = load %struct.fdc_data*, %struct.fdc_data** %11, align 8
  %122 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %121, i32 0, i32 0
  %123 = call i32 @mtx_lock(i32* %122)
  %124 = load i32, i32* @FD_EMPTY, align 4
  %125 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %126 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.fdc_data*, %struct.fdc_data** %11, align 8
  %130 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %129, i32 0, i32 0
  %131 = call i32 @mtx_unlock(i32* %130)
  %132 = load i32, i32* @ENXIO, align 4
  store i32 %132, i32* %5, align 4
  br label %205

133:                                              ; preds = %112, %108
  %134 = load %struct.fdc_data*, %struct.fdc_data** %11, align 8
  %135 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %134, i32 0, i32 0
  %136 = call i32 @mtx_lock(i32* %135)
  %137 = load i32, i32* @FD_NEWDISK, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %140 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load %struct.fdc_data*, %struct.fdc_data** %11, align 8
  %144 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %143, i32 0, i32 0
  %145 = call i32 @mtx_unlock(i32* %144)
  br label %146

146:                                              ; preds = %133, %101
  %147 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %148 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @device_busy(i32 %149)
  store i32 1, i32* %15, align 4
  br label %151

151:                                              ; preds = %146, %80, %75, %70
  %152 = load i32, i32* %8, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %156 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @FD_WP, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %154
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %166 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @device_unbusy(i32 %167)
  br label %169

169:                                              ; preds = %164, %161
  %170 = load i32, i32* @EROFS, align 4
  store i32 %170, i32* %5, align 4
  br label %205

171:                                              ; preds = %154, %151
  %172 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %173 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %176 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 8
  %177 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %178 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %177, i32 0, i32 3
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %183 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %182, i32 0, i32 3
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %181, %186
  %188 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %189 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = mul nsw i32 %187, %190
  %192 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %193 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %195 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  %198 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %197, i32 0, i32 3
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %196, %201
  %203 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %204 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 8
  store i32 0, i32* %5, align 4
  br label %205

205:                                              ; preds = %171, %169, %120, %99, %90, %55, %30
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @device_unbusy(i32) #1

declare dso_local i64 @fdmisccmd(%struct.fd_data*, i32, i32*) #1

declare dso_local i64 @fdautoselect(%struct.fd_data*) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_busy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

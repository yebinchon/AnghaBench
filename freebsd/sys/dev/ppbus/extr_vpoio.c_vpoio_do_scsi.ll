; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpoio.c_vpoio_do_scsi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpoio.c_vpoio_do_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpoio_data = type { i32 }

@PPB_WAIT = common dso_local global i32 0, align 4
@PPB_INTR = common dso_local global i32 0, align 4
@VP0_ECONNECT = common dso_local global i32 0, align 4
@H_AUTO = common dso_local global i32 0, align 4
@H_nSELIN = common dso_local global i32 0, align 4
@H_INIT = common dso_local global i32 0, align 4
@H_STROBE = common dso_local global i32 0, align 4
@VP0_FAST_SPINTMO = common dso_local global i32 0, align 4
@VP0_ECMD_TIMEOUT = common dso_local global i32 0, align 4
@VP0_EPPDATA_TIMEOUT = common dso_local global i32 0, align 4
@VP0_LOW_SPINTMO = common dso_local global i32 0, align 4
@VP0_ESTATUS_TIMEOUT = common dso_local global i32 0, align 4
@VP0_EDATA_OVERFLOW = common dso_local global i32 0, align 4
@VP0_SECTOR_SIZE = common dso_local global i32 0, align 4
@VP0_EOTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpoio_do_scsi(%struct.vpoio_data* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.vpoio_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.vpoio_data* %0, %struct.vpoio_data** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %29 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %30 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_get_parent(i32 %31)
  store i32 %32, i32* %22, align 4
  store i8 0, i8* %25, align 1
  store i32 0, i32* %27, align 4
  %33 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %34 = load i32, i32* @PPB_WAIT, align 4
  %35 = load i32, i32* @PPB_INTR, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @vpoio_connect(%struct.vpoio_data* %33, i32 %36)
  store i32 %37, i32* %27, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %10
  %40 = load i32, i32* %27, align 4
  store i32 %40, i32* %11, align 4
  br label %205

41:                                               ; preds = %10
  %42 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %43 = call i32 @vpoio_in_disk_mode(%struct.vpoio_data* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @VP0_ECONNECT, align 4
  %47 = load i32*, i32** %21, align 8
  store i32 %46, i32* %47, align 4
  br label %202

48:                                               ; preds = %41
  %49 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @vpoio_select(%struct.vpoio_data* %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %21, align 8
  store i32 %52, i32* %53, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %202

56:                                               ; preds = %48
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* @H_AUTO, align 4
  %59 = load i32, i32* @H_nSELIN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @H_INIT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @H_STROBE, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @ppb_wctr(i32 %57, i32 %64)
  store i32 0, i32* %28, align 4
  br label %66

66:                                               ; preds = %91, %56
  %67 = load i32, i32* %28, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %66
  %71 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %72 = load i32, i32* @VP0_FAST_SPINTMO, align 4
  %73 = call signext i8 @vpoio_wait(%struct.vpoio_data* %71, i32 %72)
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, -32
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @VP0_ECMD_TIMEOUT, align 4
  %78 = load i32*, i32** %21, align 8
  store i32 %77, i32* %78, align 4
  br label %202

79:                                               ; preds = %70
  %80 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = load i32, i32* %28, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = call i32 @vpoio_outstr(%struct.vpoio_data* %80, i8* %84, i32 1)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @VP0_EPPDATA_TIMEOUT, align 4
  %89 = load i32*, i32** %21, align 8
  store i32 %88, i32* %89, align 4
  br label %202

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %28, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %28, align 4
  br label %66

94:                                               ; preds = %66
  %95 = load i32*, i32** %20, align 8
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %166, %94
  %97 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %98 = load i32, i32* @VP0_LOW_SPINTMO, align 4
  %99 = call signext i8 @vpoio_wait(%struct.vpoio_data* %97, i32 %98)
  store i8 %99, i8* %23, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* @VP0_ESTATUS_TIMEOUT, align 4
  %103 = load i32*, i32** %21, align 8
  store i32 %102, i32* %103, align 4
  br label %202

104:                                              ; preds = %96
  %105 = load i8, i8* %23, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, -16
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %171

109:                                              ; preds = %104
  %110 = load i32*, i32** %20, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @VP0_EDATA_OVERFLOW, align 4
  %116 = load i32*, i32** %21, align 8
  store i32 %115, i32* %116, align 4
  br label %202

117:                                              ; preds = %109
  %118 = load i32, i32* %22, align 4
  %119 = call i64 @PPB_IN_EPP_MODE(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8, i8* %23, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, -64
  br i1 %124, label %125, label %137

125:                                              ; preds = %121, %117
  %126 = load i32, i32* %18, align 4
  %127 = load i32*, i32** %20, align 8
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %126, %128
  %130 = load i32, i32* @VP0_SECTOR_SIZE, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @VP0_SECTOR_SIZE, align 4
  br label %135

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 1, %134 ]
  store i32 %136, i32* %26, align 4
  br label %138

137:                                              ; preds = %121
  store i32 1, i32* %26, align 4
  br label %138

138:                                              ; preds = %137, %135
  %139 = load i8, i8* %23, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, -64
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %144 = load i8*, i8** %17, align 8
  %145 = load i32*, i32** %20, align 8
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i32, i32* %26, align 4
  %150 = call i32 @vpoio_outstr(%struct.vpoio_data* %143, i8* %148, i32 %149)
  store i32 %150, i32* %27, align 4
  br label %160

151:                                              ; preds = %138
  %152 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = load i32*, i32** %20, align 8
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  %158 = load i32, i32* %26, align 4
  %159 = call i32 @vpoio_instr(%struct.vpoio_data* %152, i8* %157, i32 %158)
  store i32 %159, i32* %27, align 4
  br label %160

160:                                              ; preds = %151, %142
  %161 = load i32, i32* %27, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %27, align 4
  %165 = load i32*, i32** %21, align 8
  store i32 %164, i32* %165, align 4
  br label %202

166:                                              ; preds = %160
  %167 = load i32, i32* %26, align 4
  %168 = load i32*, i32** %20, align 8
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, %167
  store i32 %170, i32* %168, align 4
  br label %96

171:                                              ; preds = %108
  %172 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %173 = call i32 @vpoio_instr(%struct.vpoio_data* %172, i8* %24, i32 1)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* @VP0_EOTHER, align 4
  %177 = load i32*, i32** %21, align 8
  store i32 %176, i32* %177, align 4
  br label %202

178:                                              ; preds = %171
  %179 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %180 = load i32, i32* @VP0_FAST_SPINTMO, align 4
  %181 = call signext i8 @vpoio_wait(%struct.vpoio_data* %179, i32 %180)
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, -16
  br i1 %183, label %184, label %193

184:                                              ; preds = %178
  %185 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %186 = call i32 @vpoio_instr(%struct.vpoio_data* %185, i8* %25, i32 1)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* @VP0_EOTHER, align 4
  %190 = add nsw i32 %189, 2
  %191 = load i32*, i32** %21, align 8
  store i32 %190, i32* %191, align 4
  br label %202

192:                                              ; preds = %184
  br label %193

193:                                              ; preds = %192, %178
  %194 = load i8, i8* %25, align 1
  %195 = sext i8 %194 to i32
  %196 = shl i32 %195, 8
  %197 = load i8, i8* %24, align 1
  %198 = sext i8 %197 to i32
  %199 = and i32 %198, 255
  %200 = or i32 %196, %199
  %201 = load i32*, i32** %19, align 8
  store i32 %200, i32* %201, align 4
  br label %202

202:                                              ; preds = %193, %188, %175, %163, %114, %101, %87, %76, %55, %45
  %203 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %204 = call i32 @vpoio_disconnect(%struct.vpoio_data* %203)
  store i32 0, i32* %11, align 4
  br label %205

205:                                              ; preds = %202, %39
  %206 = load i32, i32* %11, align 4
  ret i32 %206
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @vpoio_connect(%struct.vpoio_data*, i32) #1

declare dso_local i32 @vpoio_in_disk_mode(%struct.vpoio_data*) #1

declare dso_local i32 @vpoio_select(%struct.vpoio_data*, i32, i32) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local signext i8 @vpoio_wait(%struct.vpoio_data*, i32) #1

declare dso_local i32 @vpoio_outstr(%struct.vpoio_data*, i8*, i32) #1

declare dso_local i64 @PPB_IN_EPP_MODE(i32) #1

declare dso_local i32 @vpoio_instr(%struct.vpoio_data*, i8*, i32) #1

declare dso_local i32 @vpoio_disconnect(%struct.vpoio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_check_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_check_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustorage_fs_softc = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.ustorage_fs_lun*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64, i64, %struct.ustorage_fs_lun* }
%struct.ustorage_fs_lun = type { i64, i64, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%u > %u\0A\00", align 1
@CSWSTATUS_PHASE = common dso_local global i32 0, align 4
@SC_REQUEST_SENSE = common dso_local global i32 0, align 4
@SS_NO_SENSE = common dso_local global i64 0, align 8
@SC_INQUIRY = common dso_local global i32 0, align 4
@SS_INVALID_FIELD_IN_CDB = common dso_local global i64 0, align 8
@SS_MEDIUM_NOT_PRESENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ustorage_fs_softc*, i64, i64, i64)* @ustorage_fs_check_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ustorage_fs_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ustorage_fs_lun*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ustorage_fs_softc* %0, %struct.ustorage_fs_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %14 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 5
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %24 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %22, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %33)
  %35 = load i32, i32* @CSWSTATUS_PHASE, align 4
  %36 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %37 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  store i64 1, i64* %5, align 8
  br label %204

40:                                               ; preds = %4
  %41 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %42 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 31
  store i32 %48, i32* %46, align 4
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %51 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %40
  %57 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %58 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %62 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %60, %63
  br i1 %64, label %65, label %130

65:                                               ; preds = %56
  %66 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %67 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %66, i32 0, i32 3
  %68 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %67, align 8
  %69 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %70 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %68, i64 %72
  store %struct.ustorage_fs_lun* %73, %struct.ustorage_fs_lun** %10, align 8
  %74 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %75 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store %struct.ustorage_fs_lun* %73, %struct.ustorage_fs_lun** %76, align 8
  %77 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %78 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SC_REQUEST_SENSE, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %65
  %87 = load i64, i64* @SS_NO_SENSE, align 8
  %88 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %89 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %91 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %93 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %86, %65
  %95 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %96 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SS_NO_SENSE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %129

100:                                              ; preds = %94
  %101 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %102 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SC_INQUIRY, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %100
  %111 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %112 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SC_REQUEST_SENSE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %110
  %121 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %122 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %125 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* @SS_NO_SENSE, align 8
  %127 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %128 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  store i64 1, i64* %5, align 8
  br label %204

129:                                              ; preds = %110, %100, %94
  br label %155

130:                                              ; preds = %56
  store %struct.ustorage_fs_lun* null, %struct.ustorage_fs_lun** %10, align 8
  %131 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %132 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  store %struct.ustorage_fs_lun* null, %struct.ustorage_fs_lun** %133, align 8
  %134 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %135 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %134, i32 0, i32 1
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SC_INQUIRY, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %130
  %144 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %145 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @SC_REQUEST_SENSE, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  store i64 1, i64* %5, align 8
  br label %204

154:                                              ; preds = %143, %130
  br label %155

155:                                              ; preds = %154, %129
  store i64 0, i64* %12, align 8
  br label %156

156:                                              ; preds = %185, %155
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* %7, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %188

160:                                              ; preds = %156
  %161 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %6, align 8
  %162 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %161, i32 0, i32 1
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %12, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %160
  %171 = load i64, i64* %8, align 8
  %172 = load i64, i64* %12, align 8
  %173 = shl i64 1, %172
  %174 = and i64 %171, %173
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %170
  %177 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %178 = icmp ne %struct.ustorage_fs_lun* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i64, i64* @SS_INVALID_FIELD_IN_CDB, align 8
  %181 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %182 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %179, %176
  store i64 1, i64* %5, align 8
  br label %204

184:                                              ; preds = %170, %160
  br label %185

185:                                              ; preds = %184
  %186 = load i64, i64* %12, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %12, align 8
  br label %156

188:                                              ; preds = %156
  %189 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %190 = icmp ne %struct.ustorage_fs_lun* %189, null
  br i1 %190, label %191, label %203

191:                                              ; preds = %188
  %192 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %193 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %191
  %197 = load i64, i64* %9, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i64, i64* @SS_MEDIUM_NOT_PRESENT, align 8
  %201 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  %202 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  store i64 1, i64* %5, align 8
  br label %204

203:                                              ; preds = %196, %191, %188
  store i64 0, i64* %5, align 8
  br label %204

204:                                              ; preds = %203, %199, %183, %153, %120, %28
  %205 = load i64, i64* %5, align 8
  ret i64 %205
}

declare dso_local i32 @DPRINTF(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

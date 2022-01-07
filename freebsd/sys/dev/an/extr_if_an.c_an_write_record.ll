; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_write_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_write_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.an_ltv_gen = type { i32, i32, i32 }
%struct.an_card_rid_desc = type { i32, i32, i32, i32 }
%struct.an_command = type { i32, i32, i32, i32, i32, i32 }
%struct.an_reply = type { i32, i32, i32, i32, i32, i32 }

@an_dump = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@AN_CMD_ACCESS = common dso_local global i32 0, align 4
@AN_ACCESS_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AN_BAP1 = common dso_local global i32 0, align 4
@AN_DATA1 = common dso_local global i32 0, align 4
@AN_DATA0 = common dso_local global i32 0, align 4
@AN_ACCESS_WRITE = common dso_local global i32 0, align 4
@AN_TIMEOUT = common dso_local global i32 0, align 4
@AN_CMD_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"BUSY\0A\00", align 1
@AN_HOST_DESC_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to write RID 1 %x %x %x %x %x, %d\0A\00", align 1
@AN_CMD_QUAL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to write RID 2 %x %x %x %x %x, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.an_softc*, %struct.an_ltv_gen*)* @an_write_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_write_record(%struct.an_softc* %0, %struct.an_ltv_gen* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.an_softc*, align 8
  %5 = alloca %struct.an_ltv_gen*, align 8
  %6 = alloca %struct.an_card_rid_desc, align 4
  %7 = alloca %struct.an_command, align 4
  %8 = alloca %struct.an_reply, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %4, align 8
  store %struct.an_ltv_gen* %1, %struct.an_ltv_gen** %5, align 8
  %13 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %14 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %13)
  %15 = load i64, i64* @an_dump, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %19 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %20 = call i32 @an_dump_record(%struct.an_softc* %18, %struct.an_ltv_gen* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %23 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %98, label %26

26:                                               ; preds = %21
  %27 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %28 = load i32, i32* @AN_CMD_ACCESS, align 4
  %29 = load i32, i32* @AN_ACCESS_READ, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %32 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @an_cmd(%struct.an_softc* %27, i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @EIO, align 4
  store i32 %37, i32* %3, align 4
  br label %234

38:                                               ; preds = %26
  %39 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %40 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %41 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AN_BAP1, align 4
  %44 = call i64 @an_seek(%struct.an_softc* %39, i32 %42, i32 0, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @EIO, align 4
  store i32 %47, i32* %3, align 4
  br label %234

48:                                               ; preds = %38
  %49 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %50 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 2
  store i32 %52, i32* %12, align 4
  %53 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %54 = load i32, i32* @AN_DATA1, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @CSR_WRITE_2(%struct.an_softc* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %57, 2
  store i32 %58, i32* %12, align 4
  %59 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %60 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %59, i32 0, i32 2
  store i32* %60, i32** %9, align 8
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %72, %48
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %67 = load i32, i32* @AN_DATA1, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %9, align 8
  %70 = load i32, i32* %68, align 4
  %71 = call i32 @CSR_WRITE_2(%struct.an_softc* %66, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %73, 2
  store i32 %74, i32* %11, align 4
  br label %62

75:                                               ; preds = %62
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32*, i32** %9, align 8
  store i32* %79, i32** %10, align 8
  %80 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %81 = load i32, i32* @AN_DATA0, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @CSR_WRITE_1(%struct.an_softc* %80, i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %78, %75
  %86 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %87 = load i32, i32* @AN_CMD_ACCESS, align 4
  %88 = load i32, i32* @AN_ACCESS_WRITE, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %91 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @an_cmd(%struct.an_softc* %86, i32 %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @EIO, align 4
  store i32 %96, i32* %3, align 4
  br label %234

97:                                               ; preds = %85
  br label %233

98:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %117, %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @AN_TIMEOUT, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %105 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %106 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @AN_COMMAND(i32 %107)
  %109 = call i32 @CSR_READ_2(%struct.an_softc* %104, i32 %108)
  %110 = load i32, i32* @AN_CMD_BUSY, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = call i32 @DELAY(i32 10)
  br label %116

115:                                              ; preds = %103
  br label %120

116:                                              ; preds = %113
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %99

120:                                              ; preds = %115, %99
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @AN_TIMEOUT, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %120
  %127 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %6, i32 0, i32 0
  store i32 1, i32* %127, align 4
  %128 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %129 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 2
  %132 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %6, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  %133 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %134 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %6, i32 0, i32 3
  store i32 %135, i32* %136, align 4
  %137 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %138 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %6, i32 0, i32 2
  store i32 %140, i32* %141, align 4
  %142 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %143 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %142, i32 0, i32 1
  %144 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %145 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %6, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @bcopy(i32* %143, i32 %147, i32 %149)
  %151 = bitcast %struct.an_command* %7 to %struct.an_reply*
  %152 = call i32 @bzero(%struct.an_reply* %151, i32 24)
  %153 = call i32 @bzero(%struct.an_reply* %8, i32 24)
  %154 = load i32, i32* @AN_CMD_ACCESS, align 4
  %155 = load i32, i32* @AN_ACCESS_WRITE, align 4
  %156 = or i32 %154, %155
  %157 = getelementptr inbounds %struct.an_command, %struct.an_command* %7, i32 0, i32 0
  store i32 %156, i32* %157, align 4
  %158 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %159 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.an_command, %struct.an_command* %7, i32 0, i32 5
  store i32 %160, i32* %161, align 4
  store i32 0, i32* %11, align 4
  br label %162

162:                                              ; preds = %180, %126
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp ult i64 %164, 4
  br i1 %165, label %166, label %183

166:                                              ; preds = %162
  %167 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %168 = load i64, i64* @AN_HOST_DESC_OFFSET, align 8
  %169 = load i32, i32* %11, align 4
  %170 = mul nsw i32 %169, 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %168, %171
  %173 = bitcast %struct.an_card_rid_desc* %6 to i8*
  %174 = bitcast i8* %173 to i32*
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @CSR_MEM_AUX_WRITE_4(%struct.an_softc* %167, i64 %172, i32 %178)
  br label %180

180:                                              ; preds = %166
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %162

183:                                              ; preds = %162
  %184 = call i32 @DELAY(i32 100000)
  %185 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %186 = bitcast %struct.an_command* %7 to %struct.an_reply*
  %187 = call i32 @an_cmd_struct(%struct.an_softc* %185, %struct.an_reply* %186, %struct.an_reply* %8)
  store i32 %187, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %207

189:                                              ; preds = %183
  %190 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %191 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %194 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %8, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %8, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %8, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %8, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %11, align 4
  %205 = call i32 @if_printf(i32 %192, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %195, i32 %197, i32 %199, i32 %201, i32 %203, i32 %204)
  %206 = load i32, i32* @EIO, align 4
  store i32 %206, i32* %3, align 4
  br label %234

207:                                              ; preds = %183
  %208 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %8, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @AN_CMD_QUAL_MASK, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %231

213:                                              ; preds = %207
  %214 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %215 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %218 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %8, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %8, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %8, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %8, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i32 @if_printf(i32 %216, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %219, i32 %221, i32 %223, i32 %225, i32 %227, i32 %228)
  %230 = load i32, i32* @EIO, align 4
  store i32 %230, i32* %3, align 4
  br label %234

231:                                              ; preds = %207
  %232 = call i32 @DELAY(i32 100000)
  br label %233

233:                                              ; preds = %231, %97
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %233, %213, %189, %95, %46, %36
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i32 @an_dump_record(%struct.an_softc*, %struct.an_ltv_gen*, i8*) #1

declare dso_local i64 @an_cmd(%struct.an_softc*, i32, i32) #1

declare dso_local i64 @an_seek(%struct.an_softc*, i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.an_softc*, i32) #1

declare dso_local i32 @AN_COMMAND(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @bzero(%struct.an_reply*, i32) #1

declare dso_local i32 @CSR_MEM_AUX_WRITE_4(%struct.an_softc*, i64, i32) #1

declare dso_local i32 @an_cmd_struct(%struct.an_softc*, %struct.an_reply*, %struct.an_reply*) #1

declare dso_local i32 @if_printf(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

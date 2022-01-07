; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_enable_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_enable_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64, i32, i32, i32, i32*, i32*, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@ST3_RX_ENABLED = common dso_local global i8 0, align 1
@DMABUFSZ = common dso_local global i32 0, align 4
@NBUF = common dso_local global i32 0, align 4
@IE1_CDCDE = common dso_local global i8 0, align 1
@IE0_RX_INTE = common dso_local global i8 0, align 1
@IER0_RX_INTE_1 = common dso_local global i8 0, align 1
@IER0_RX_INTE_0 = common dso_local global i8 0, align 1
@CMD_RX_DISABLE = common dso_local global i8 0, align 1
@IER0_RX_RDYE_1 = common dso_local global i8 0, align 1
@IER0_RX_RDYE_0 = common dso_local global i8 0, align 1
@IER1_RX_DMERE_1 = common dso_local global i8 0, align 1
@IER1_RX_DME_1 = common dso_local global i8 0, align 1
@IER1_RX_DMERE_0 = common dso_local global i8 0, align 1
@IER1_RX_DME_0 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_enable_receive(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = call zeroext i8 @inb(i32 %10)
  store i8 %11, i8* %5, align 1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %104

14:                                               ; preds = %2
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @ST3_RX_ENABLED, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %104, label %21

21:                                               ; preds = %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DMABUFSZ, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @NBUF, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ct_start_receiver(%struct.TYPE_7__* %24, i32 1, i32 %29, i32 %30, i32 %35, i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call zeroext i8 @inb(i32 %50)
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @IE1_CDCDE, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %52, %54
  %56 = trunc i32 %55 to i8
  %57 = call i32 @outb(i32 %47, i8 zeroext %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call zeroext i8 @inb(i32 %63)
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @IE0_RX_INTE, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %65, %67
  %69 = trunc i32 %68 to i8
  %70 = call i32 @outb(i32 %60, i8 zeroext %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @IER0(i32 %75)
  %77 = call zeroext i8 @inb(i32 %76)
  store i8 %77, i8* %6, align 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %21
  %83 = load i8, i8* @IER0_RX_INTE_1, align 1
  %84 = zext i8 %83 to i32
  br label %88

85:                                               ; preds = %21
  %86 = load i8, i8* @IER0_RX_INTE_0, align 1
  %87 = zext i8 %86 to i32
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i32 [ %84, %82 ], [ %87, %85 ]
  %90 = load i8, i8* %6, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %91, %89
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %6, align 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @IER0(i32 %98)
  %100 = load i8, i8* %6, align 1
  %101 = call i32 @outb(i32 %99, i8 zeroext %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = call i32 @ct_set_rts(%struct.TYPE_7__* %102, i32 1)
  br label %201

104:                                              ; preds = %14, %2
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %200, label %107

107:                                              ; preds = %104
  %108 = load i8, i8* %5, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* @ST3_RX_ENABLED, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %200

114:                                              ; preds = %107
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = call i32 @ct_set_rts(%struct.TYPE_7__* %115, i32 0)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i8, i8* @CMD_RX_DISABLE, align 1
  %121 = call i32 @outb(i32 %119, i8 zeroext %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @IER0(i32 %126)
  %128 = call zeroext i8 @inb(i32 %127)
  store i8 %128, i8* %6, align 1
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %114
  %134 = load i8, i8* @IER0_RX_INTE_1, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* @IER0_RX_RDYE_1, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %135, %137
  %139 = xor i32 %138, -1
  br label %147

140:                                              ; preds = %114
  %141 = load i8, i8* @IER0_RX_INTE_0, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* @IER0_RX_RDYE_0, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %142, %144
  %146 = xor i32 %145, -1
  br label %147

147:                                              ; preds = %140, %133
  %148 = phi i32 [ %139, %133 ], [ %146, %140 ]
  %149 = load i8, i8* %6, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, %148
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %6, align 1
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @IER0(i32 %157)
  %159 = load i8, i8* %6, align 1
  %160 = call i32 @outb(i32 %158, i8 zeroext %159)
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @IER1(i32 %165)
  %167 = call zeroext i8 @inb(i32 %166)
  store i8 %167, i8* %7, align 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %147
  %173 = load i8, i8* @IER1_RX_DMERE_1, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* @IER1_RX_DME_1, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %174, %176
  %178 = xor i32 %177, -1
  br label %186

179:                                              ; preds = %147
  %180 = load i8, i8* @IER1_RX_DMERE_0, align 1
  %181 = zext i8 %180 to i32
  %182 = load i8, i8* @IER1_RX_DME_0, align 1
  %183 = zext i8 %182 to i32
  %184 = or i32 %181, %183
  %185 = xor i32 %184, -1
  br label %186

186:                                              ; preds = %179, %172
  %187 = phi i32 [ %178, %172 ], [ %185, %179 ]
  %188 = load i8, i8* %7, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %189, %187
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %7, align 1
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @IER1(i32 %196)
  %198 = load i8, i8* %7, align 1
  %199 = call i32 @outb(i32 %197, i8 zeroext %198)
  br label %200

200:                                              ; preds = %186, %107, %104
  br label %201

201:                                              ; preds = %200, %88
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ct_start_receiver(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i8 zeroext) #1

declare dso_local i32 @IER0(i32) #1

declare dso_local i32 @ct_set_rts(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @IER1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

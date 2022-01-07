; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_audio.c_set_audio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_audio.c_set_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32*, i32, i64 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"%s: audio cmd error %02x\0A\00", align 1
@CARD_IO_BCTV2 = common dso_local global i64 0, align 8
@BKTR_GPIO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_audio(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %203

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %46 [
    i32 129, label %18
    i32 132, label %32
    i32 131, label %35
    i32 130, label %38
    i32 128, label %42
  ]

18:                                               ; preds = %16
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %31

28:                                               ; preds = %18
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32 3, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  br label %51

32:                                               ; preds = %16
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %51

35:                                               ; preds = %16
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 2, i32* %37, align 8
  br label %51

38:                                               ; preds = %16
  %39 = load i64, i64* @TRUE, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %51

42:                                               ; preds = %16
  %43 = load i64, i64* @FALSE, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %51

46:                                               ; preds = %16
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = call i8* @bktr_name(%struct.TYPE_11__* %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %49)
  store i32 -1, i32* %3, align 4
  br label %203

51:                                               ; preds = %42, %38, %35, %32, %31
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CARD_IO_BCTV2, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = call i32 @set_bctv2_audio(%struct.TYPE_11__* %58)
  store i32 0, i32* %3, align 4
  br label %203

60:                                               ; preds = %51
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TRUE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  store volatile i64 3, i64* %7, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store volatile i64 3, i64* %7, align 8
  br label %73

72:                                               ; preds = %66
  store volatile i64 0, i64* %7, align 8
  br label %73

73:                                               ; preds = %72, %71
  br label %79

74:                                               ; preds = %60
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  store volatile i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %74, %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = load i32, i32* @BKTR_GPIO_DATA, align 4
  %82 = call i32 @INL(%struct.TYPE_11__* %80, i32 %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = xor i32 %86, -1
  %88 = and i32 %82, %87
  store i32 %88, i32* %6, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = load i32, i32* @BKTR_GPIO_DATA, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load volatile i64, i64* %7, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %91, %98
  %100 = call i32 @OUTL(%struct.TYPE_11__* %89, i32 %90, i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %202

106:                                              ; preds = %79
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %202

111:                                              ; preds = %106
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TRUE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @msp_dpl_write(%struct.TYPE_11__* %118, i32 %121, i32 18, i32 0, i32 0)
  br label %201

123:                                              ; preds = %111
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %123
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @msp_dpl_write(%struct.TYPE_11__* %129, i32 %132, i32 18, i32 0, i32 29440)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = call i32 @msp_autodetect(%struct.TYPE_11__* %139)
  br label %141

141:                                              ; preds = %138, %128
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 4
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %141, %123
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %172

149:                                              ; preds = %144
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @msp_dpl_write(%struct.TYPE_11__* %150, i32 %153, i32 18, i32 0, i32 29440)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @msp_dpl_write(%struct.TYPE_11__* %155, i32 %158, i32 18, i32 13, i32 6400)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @msp_dpl_write(%struct.TYPE_11__* %160, i32 %163, i32 18, i32 8, i32 544)
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @msp_dpl_write(%struct.TYPE_11__* %165, i32 %168, i32 18, i32 19, i32 0)
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 4
  store i64 1, i64* %171, align 8
  br label %172

172:                                              ; preds = %149, %144
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %177, label %200

177:                                              ; preds = %172
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @msp_dpl_write(%struct.TYPE_11__* %178, i32 %181, i32 18, i32 0, i32 29440)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @msp_dpl_write(%struct.TYPE_11__* %183, i32 %186, i32 18, i32 13, i32 6400)
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @msp_dpl_write(%struct.TYPE_11__* %188, i32 %191, i32 18, i32 8, i32 544)
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @msp_dpl_write(%struct.TYPE_11__* %193, i32 %196, i32 18, i32 19, i32 512)
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 4
  store i64 2, i64* %199, align 8
  br label %200

200:                                              ; preds = %177, %172
  br label %201

201:                                              ; preds = %200, %117
  br label %202

202:                                              ; preds = %201, %106, %79
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %202, %57, %46, %15
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

declare dso_local i8* @bktr_name(%struct.TYPE_11__*) #1

declare dso_local i32 @set_bctv2_audio(%struct.TYPE_11__*) #1

declare dso_local i32 @INL(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @OUTL(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @msp_dpl_write(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @msp_autodetect(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

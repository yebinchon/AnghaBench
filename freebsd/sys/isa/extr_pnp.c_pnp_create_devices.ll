; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_create_devices.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_create_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.pnp_set_config_arg = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@PNP_TAG_ID_ANSI = common dso_local global i64 0, align 8
@ISA_ORDER_PNP = common dso_local global i32 0, align 4
@ISACFGATTR_CANDISABLE = common dso_local global i32 0, align 4
@ISACFGATTR_DYNAMIC = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@pnp_set_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"malformed resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_3__*, i32, i32*, i32)* @pnp_create_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_create_devices(i64 %0, %struct.TYPE_3__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.pnp_set_config_arg*, align 8
  %22 = alloca [100 x i8], align 16
  %23 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %14, align 8
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %17, align 4
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i8* null, i8** %23, align 8
  %26 = load i32*, i32** %9, align 8
  store i32* %26, i32** %12, align 8
  br label %27

27:                                               ; preds = %228, %107, %101, %96, %74, %57, %42, %5
  %28 = load i32, i32* %16, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %229

30:                                               ; preds = %27
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %12, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %16, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @PNP_RES_TYPE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %102

39:                                               ; preds = %30
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %16, align 4
  br label %27

43:                                               ; preds = %39
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = add nsw i32 %46, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32* %53, i32** %12, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 0, i32* %16, align 4
  br label %27

58:                                               ; preds = %43
  %59 = load i32*, i32** %12, align 8
  store i32* %59, i32** %13, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %12, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @PNP_LRES_NUM(i32 %67)
  %69 = load i64, i64* @PNP_TAG_ID_ANSI, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %101

71:                                               ; preds = %58
  %72 = load i64, i64* %19, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %27

75:                                               ; preds = %71
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ugt i64 %77, 99
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 99, i32* %15, align 4
  br label %80

80:                                               ; preds = %79, %75
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @bcopy(i32* %81, i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %93, %80
  %86 = load i32, i32* %15, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %15, align 4
  br label %85

96:                                               ; preds = %85
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 %98
  store i8 0, i8* %99, align 1
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  store i8* %100, i8** %23, align 8
  br label %27

101:                                              ; preds = %58
  br label %27

102:                                              ; preds = %30
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @PNP_SRES_LEN(i32 %104)
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %16, align 4
  br label %27

108:                                              ; preds = %102
  %109 = load i32*, i32** %12, align 8
  store i32* %109, i32** %13, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @PNP_SRES_LEN(i32 %110)
  %112 = load i32*, i32** %12, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %12, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @PNP_SRES_LEN(i32 %115)
  %117 = load i32, i32* %16, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @PNP_SRES_NUM(i32 %119)
  switch i32 %120, label %227 [
    i32 128, label %121
    i32 129, label %208
  ]

121:                                              ; preds = %108
  %122 = load i32*, i32** %14, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load i64, i64* %19, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = ptrtoint i32* %127 to i64
  %130 = ptrtoint i32* %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 4
  %133 = sub nsw i64 %132, 1
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @pnp_parse_resources(i64 %125, i32* %126, i32 %134, i32 %135)
  store i64 0, i64* %19, align 8
  store i32* null, i32** %14, align 8
  br label %137

137:                                              ; preds = %124, %121
  %138 = load i32*, i32** %13, align 8
  %139 = call i32 @bcopy(i32* %138, i8* %18, i32 4)
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i8, i8* %18, align 1
  %144 = load i32, i32* %20, align 4
  %145 = call i32 @pnp_check_quirks(i32 %142, i8 signext %143, i32 %144, i32* null)
  %146 = load i64, i64* %6, align 8
  %147 = load i32, i32* @ISA_ORDER_PNP, align 4
  %148 = call i64 @BUS_ADD_CHILD(i64 %146, i32 %147, i32* null, i32 -1)
  store i64 %148, i64* %19, align 8
  %149 = load i8*, i8** %23, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %137
  %152 = load i64, i64* %19, align 8
  %153 = load i8*, i8** %23, align 8
  %154 = call i32 @device_set_desc_copy(i64 %152, i8* %153)
  br label %160

155:                                              ; preds = %137
  %156 = load i64, i64* %19, align 8
  %157 = load i8, i8* %18, align 1
  %158 = call i8* @pnp_eisaformat(i8 signext %157)
  %159 = call i32 @device_set_desc_copy(i64 %156, i8* %158)
  br label %160

160:                                              ; preds = %155, %151
  %161 = load i64, i64* %19, align 8
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @isa_set_vendorid(i64 %161, i32 %164)
  %166 = load i64, i64* %19, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @isa_set_serial(i64 %166, i32 %169)
  %171 = load i64, i64* %19, align 8
  %172 = load i8, i8* %18, align 1
  %173 = call i32 @isa_set_logicalid(i64 %171, i8 signext %172)
  %174 = load i64, i64* %19, align 8
  %175 = load i32, i32* @ISACFGATTR_CANDISABLE, align 4
  %176 = load i32, i32* @ISACFGATTR_DYNAMIC, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @isa_set_configattr(i64 %174, i32 %177)
  %179 = load i32, i32* @M_DEVBUF, align 4
  %180 = load i32, i32* @M_NOWAIT, align 4
  %181 = call %struct.pnp_set_config_arg* @malloc(i32 8, i32 %179, i32 %180)
  store %struct.pnp_set_config_arg* %181, %struct.pnp_set_config_arg** %21, align 8
  %182 = load %struct.pnp_set_config_arg*, %struct.pnp_set_config_arg** %21, align 8
  %183 = icmp ne %struct.pnp_set_config_arg* %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %160
  %185 = load i64, i64* %6, align 8
  %186 = call i32 @device_printf(i64 %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %228

187:                                              ; preds = %160
  %188 = load i32, i32* %8, align 4
  %189 = load %struct.pnp_set_config_arg*, %struct.pnp_set_config_arg** %21, align 8
  %190 = getelementptr inbounds %struct.pnp_set_config_arg, %struct.pnp_set_config_arg* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %20, align 4
  %192 = load %struct.pnp_set_config_arg*, %struct.pnp_set_config_arg** %21, align 8
  %193 = getelementptr inbounds %struct.pnp_set_config_arg, %struct.pnp_set_config_arg* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load i64, i64* %6, align 8
  %195 = load i64, i64* %19, align 8
  %196 = load i32, i32* @pnp_set_config, align 4
  %197 = load %struct.pnp_set_config_arg*, %struct.pnp_set_config_arg** %21, align 8
  %198 = call i32 @ISA_SET_CONFIG_CALLBACK(i64 %194, i64 %195, i32 %196, %struct.pnp_set_config_arg* %197)
  %199 = load i64, i64* %19, align 8
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @isa_set_pnp_csn(i64 %199, i32 %200)
  %202 = load i64, i64* %19, align 8
  %203 = load i32, i32* %20, align 4
  %204 = call i32 @isa_set_pnp_ldn(i64 %202, i32 %203)
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  %207 = load i32*, i32** %12, align 8
  store i32* %207, i32** %14, align 8
  br label %228

208:                                              ; preds = %108
  %209 = load i32*, i32** %14, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load i64, i64* %6, align 8
  %213 = call i32 @device_printf(i64 %212, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %228

214:                                              ; preds = %208
  %215 = load i64, i64* %19, align 8
  %216 = load i32*, i32** %14, align 8
  %217 = load i32*, i32** %13, align 8
  %218 = load i32*, i32** %14, align 8
  %219 = ptrtoint i32* %217 to i64
  %220 = ptrtoint i32* %218 to i64
  %221 = sub i64 %219, %220
  %222 = sdiv exact i64 %221, 4
  %223 = sub nsw i64 %222, 1
  %224 = trunc i64 %223 to i32
  %225 = load i32, i32* %20, align 4
  %226 = call i32 @pnp_parse_resources(i64 %215, i32* %216, i32 %224, i32 %225)
  store i64 0, i64* %19, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %16, align 4
  br label %228

227:                                              ; preds = %108
  br label %228

228:                                              ; preds = %227, %214, %211, %187, %184
  br label %27

229:                                              ; preds = %27
  %230 = load i32, i32* %17, align 4
  ret i32 %230
}

declare dso_local i64 @PNP_RES_TYPE(i32) #1

declare dso_local i64 @PNP_LRES_NUM(i32) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

declare dso_local i32 @PNP_SRES_LEN(i32) #1

declare dso_local i32 @PNP_SRES_NUM(i32) #1

declare dso_local i32 @pnp_parse_resources(i64, i32*, i32, i32) #1

declare dso_local i32 @pnp_check_quirks(i32, i8 signext, i32, i32*) #1

declare dso_local i64 @BUS_ADD_CHILD(i64, i32, i32*, i32) #1

declare dso_local i32 @device_set_desc_copy(i64, i8*) #1

declare dso_local i8* @pnp_eisaformat(i8 signext) #1

declare dso_local i32 @isa_set_vendorid(i64, i32) #1

declare dso_local i32 @isa_set_serial(i64, i32) #1

declare dso_local i32 @isa_set_logicalid(i64, i8 signext) #1

declare dso_local i32 @isa_set_configattr(i64, i32) #1

declare dso_local %struct.pnp_set_config_arg* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i64, i8*) #1

declare dso_local i32 @ISA_SET_CONFIG_CALLBACK(i64, i64, i32, %struct.pnp_set_config_arg*) #1

declare dso_local i32 @isa_set_pnp_csn(i64, i32) #1

declare dso_local i32 @isa_set_pnp_ldn(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

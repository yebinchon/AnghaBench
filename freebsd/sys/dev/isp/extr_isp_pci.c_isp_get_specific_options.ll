; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_get_specific_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_get_specific_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan%d.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%siid\00", align 1
@ISP_CFG_OWNLOOPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%srole\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Chan %d setting role to 0x%x\0A\00", align 1
@ISP_DEFAULT_ROLES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"%sfullduplex\00", align 1
@ISP_CFG_FULL_DUPLEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"%stopology\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lport\00", align 1
@ISP_CFG_LPORT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"nport\00", align 1
@ISP_CFG_NPORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"lport-only\00", align 1
@ISP_CFG_LPORT_ONLY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"nport-only\00", align 1
@ISP_CFG_NPORT_ONLY = common dso_local global i32 0, align 4
@ISP_CFG_FCTAPE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"%snofctape\00", align 1
@ISP_CFG_NOFCTAPE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"%sfctape\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%sportwwn\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"mangled portwwn hint '%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%snodewwn\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"mangled nodewwn hint '%s'\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"%sloop_down_limit\00", align 1
@isp_loop_down_limit = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"%sgone_device_time\00", align 1
@isp_gone_device_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_9__*)* @isp_get_specific_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_get_specific_options(i32 %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [12 x i8], align 1
  %10 = alloca [16 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %16, align 1
  br label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %18, i32 12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %15
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %23 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %24 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %22, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @device_get_name(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @device_get_unit(i32 %27)
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %30 = call i64 @resource_int_value(i32 %26, i32 %28, i8* %29, i32* %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %21
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = call i64 @IS_FC(%struct.TYPE_9__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 109, %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %39, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  br label %48

43:                                               ; preds = %32
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.TYPE_10__* @ISP_SPI_PC(%struct.TYPE_9__* %44, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 7, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %36
  br label %73

49:                                               ; preds = %21
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = call i64 @IS_FC(%struct.TYPE_9__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %57, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  br label %67

61:                                               ; preds = %49
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call %struct.TYPE_10__* @ISP_SPI_PC(%struct.TYPE_9__* %63, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %53
  %68 = load i32, i32* @ISP_CFG_OWNLOOPID, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %48
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = call i64 @IS_SCSI(%struct.TYPE_9__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %391

78:                                               ; preds = %73
  store i32 -1, i32* %8, align 4
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %80 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %81 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %79, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @device_get_name(i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @device_get_unit(i32 %84)
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %87 = call i64 @resource_int_value(i32 %83, i32 %85, i8* %86, i32* %8)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %78
  %90 = load i32, i32* %8, align 4
  switch i32 %90, label %96 [
    i32 129, label %91
    i32 130, label %91
    i32 128, label %91
    i32 131, label %91
  ]

91:                                               ; preds = %89, %89, %89, %89
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i32, i8*, ...) @device_printf(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %94)
  br label %97

96:                                               ; preds = %89
  store i32 -1, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %91
  br label %98

98:                                               ; preds = %97, %78
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @ISP_DEFAULT_ROLES, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %105, i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  store i32 0, i32* %8, align 4
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %110 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %111 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %109, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @device_get_name(i32 %112)
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @device_get_unit(i32 %114)
  %116 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %117 = call i64 @resource_int_value(i32 %113, i32 %115, i8* %116, i32* %8)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %103
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32, i32* @ISP_CFG_FULL_DUPLEX, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %119, %103
  store i8* null, i8** %7, align 8
  %129 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %130 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %131 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %129, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %130)
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @device_get_name(i32 %132)
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @device_get_unit(i32 %134)
  %136 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %137 = call i32 @resource_string_value(i32 %133, i32 %135, i8* %136, i8** %7)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %186

139:                                              ; preds = %128
  %140 = load i8*, i8** %7, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %186

142:                                              ; preds = %139
  %143 = load i8*, i8** %7, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = load i32, i32* @ISP_CFG_LPORT, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %185

152:                                              ; preds = %142
  %153 = load i8*, i8** %7, align 8
  %154 = call i64 @strcmp(i8* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load i32, i32* @ISP_CFG_NPORT, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %184

162:                                              ; preds = %152
  %163 = load i8*, i8** %7, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = load i32, i32* @ISP_CFG_LPORT_ONLY, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %183

172:                                              ; preds = %162
  %173 = load i8*, i8** %7, align 8
  %174 = call i64 @strcmp(i8* %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i32, i32* @ISP_CFG_NPORT_ONLY, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %176, %172
  br label %183

183:                                              ; preds = %182, %166
  br label %184

184:                                              ; preds = %183, %156
  br label %185

185:                                              ; preds = %184, %146
  br label %186

186:                                              ; preds = %185, %139, %128
  %187 = load i32, i32* @ISP_CFG_FCTAPE, align 4
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  store i32 0, i32* %8, align 4
  %192 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %193 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %194 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %192, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %193)
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @device_get_name(i32 %195)
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @device_get_unit(i32 %197)
  %199 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %200 = call i64 @resource_int_value(i32 %196, i32 %198, i8* %199, i32* %8)
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %186
  %204 = load i32, i32* @ISP_CFG_FCTAPE, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* @ISP_CFG_NOFCTAPE, align 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %203, %186
  store i32 0, i32* %8, align 4
  %216 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %217 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %218 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %216, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %217)
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @device_get_name(i32 %219)
  %221 = load i32, i32* %4, align 4
  %222 = call i32 @device_get_unit(i32 %221)
  %223 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %224 = call i64 @resource_int_value(i32 %220, i32 %222, i8* %223, i32* %8)
  %225 = load i32, i32* %8, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %215
  %228 = load i32, i32* @ISP_CFG_NOFCTAPE, align 4
  %229 = xor i32 %228, -1
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* @ISP_CFG_FCTAPE, align 4
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %227, %215
  store i8* null, i8** %7, align 8
  %240 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %241 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %242 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %240, i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %241)
  %243 = load i32, i32* %4, align 4
  %244 = call i32 @device_get_name(i32 %243)
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @device_get_unit(i32 %245)
  %247 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %248 = call i32 @resource_string_value(i32 %244, i32 %246, i8* %247, i8** %7)
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %8, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %288

251:                                              ; preds = %239
  %252 = load i8*, i8** %7, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %288

254:                                              ; preds = %251
  %255 = load i8*, i8** %7, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %7, align 8
  %257 = load i8, i8* %255, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 119
  br i1 %259, label %260, label %288

260:                                              ; preds = %254
  store i8* null, i8** %11, align 8
  %261 = load i8*, i8** %7, align 8
  %262 = call i8* @strtouq(i8* %261, i8** %11, i32 16)
  %263 = ptrtoint i8* %262 to i32
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %265 = load i32, i32* %5, align 4
  %266 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %264, i32 %265)
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 2
  store i32 %263, i32* %267, align 8
  %268 = load i8*, i8** %11, align 8
  %269 = load i8*, i8** %7, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 16
  %271 = icmp ult i8* %268, %270
  br i1 %271, label %279, label %272

272:                                              ; preds = %260
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %274 = load i32, i32* %5, align 4
  %275 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %273, i32 %274)
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %279, label %287

279:                                              ; preds = %272, %260
  %280 = load i32, i32* %4, align 4
  %281 = load i8*, i8** %7, align 8
  %282 = call i32 (i32, i8*, ...) @device_printf(i32 %280, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %281)
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %284 = load i32, i32* %5, align 4
  %285 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %283, i32 %284)
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 2
  store i32 0, i32* %286, align 8
  br label %287

287:                                              ; preds = %279, %272
  br label %288

288:                                              ; preds = %287, %254, %251, %239
  store i8* null, i8** %7, align 8
  %289 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %290 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %291 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %289, i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* %290)
  %292 = load i32, i32* %4, align 4
  %293 = call i32 @device_get_name(i32 %292)
  %294 = load i32, i32* %4, align 4
  %295 = call i32 @device_get_unit(i32 %294)
  %296 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %297 = call i32 @resource_string_value(i32 %293, i32 %295, i8* %296, i8** %7)
  store i32 %297, i32* %8, align 4
  %298 = load i32, i32* %8, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %337

300:                                              ; preds = %288
  %301 = load i8*, i8** %7, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %303, label %337

303:                                              ; preds = %300
  %304 = load i8*, i8** %7, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %7, align 8
  %306 = load i8, i8* %304, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 119
  br i1 %308, label %309, label %337

309:                                              ; preds = %303
  store i8* null, i8** %12, align 8
  %310 = load i8*, i8** %7, align 8
  %311 = call i8* @strtouq(i8* %310, i8** %12, i32 16)
  %312 = ptrtoint i8* %311 to i64
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %314 = load i32, i32* %5, align 4
  %315 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %313, i32 %314)
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 3
  store i64 %312, i64* %316, align 8
  %317 = load i8*, i8** %12, align 8
  %318 = load i8*, i8** %7, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 16
  %320 = icmp ult i8* %317, %319
  br i1 %320, label %328, label %321

321:                                              ; preds = %309
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %323 = load i32, i32* %5, align 4
  %324 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %322, i32 %323)
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %321, %309
  %329 = load i32, i32* %4, align 4
  %330 = load i8*, i8** %7, align 8
  %331 = call i32 (i32, i8*, ...) @device_printf(i32 %329, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %330)
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %333 = load i32, i32* %5, align 4
  %334 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %332, i32 %333)
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 3
  store i64 0, i64* %335, align 8
  br label %336

336:                                              ; preds = %328, %321
  br label %337

337:                                              ; preds = %336, %303, %300, %288
  store i32 -1, i32* %8, align 4
  %338 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %339 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %340 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %338, i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %339)
  %341 = load i32, i32* %4, align 4
  %342 = call i32 @device_get_name(i32 %341)
  %343 = load i32, i32* %4, align 4
  %344 = call i32 @device_get_unit(i32 %343)
  %345 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %346 = call i64 @resource_int_value(i32 %342, i32 %344, i8* %345, i32* %8)
  %347 = load i32, i32* %8, align 4
  %348 = icmp sge i32 %347, 0
  br i1 %348, label %349, label %358

349:                                              ; preds = %337
  %350 = load i32, i32* %8, align 4
  %351 = icmp slt i32 %350, 65535
  br i1 %351, label %352, label %358

352:                                              ; preds = %349
  %353 = load i32, i32* %8, align 4
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %355 = load i32, i32* %5, align 4
  %356 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %354, i32 %355)
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 4
  store i32 %353, i32* %357, align 8
  br label %364

358:                                              ; preds = %349, %337
  %359 = load i32, i32* @isp_loop_down_limit, align 4
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %361 = load i32, i32* %5, align 4
  %362 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %360, i32 %361)
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 4
  store i32 %359, i32* %363, align 8
  br label %364

364:                                              ; preds = %358, %352
  store i32 -1, i32* %8, align 4
  %365 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %366 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %367 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %365, i32 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* %366)
  %368 = load i32, i32* %4, align 4
  %369 = call i32 @device_get_name(i32 %368)
  %370 = load i32, i32* %4, align 4
  %371 = call i32 @device_get_unit(i32 %370)
  %372 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %373 = call i64 @resource_int_value(i32 %369, i32 %371, i8* %372, i32* %8)
  %374 = load i32, i32* %8, align 4
  %375 = icmp sge i32 %374, 0
  br i1 %375, label %376, label %385

376:                                              ; preds = %364
  %377 = load i32, i32* %8, align 4
  %378 = icmp slt i32 %377, 65535
  br i1 %378, label %379, label %385

379:                                              ; preds = %376
  %380 = load i32, i32* %8, align 4
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %382 = load i32, i32* %5, align 4
  %383 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %381, i32 %382)
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 5
  store i32 %380, i32* %384, align 4
  br label %391

385:                                              ; preds = %376, %364
  %386 = load i32, i32* @isp_gone_device_time, align 4
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %388 = load i32, i32* %5, align 4
  %389 = call %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__* %387, i32 %388)
  %390 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i32 0, i32 5
  store i32 %386, i32* %390, align 4
  br label %391

391:                                              ; preds = %77, %385, %379
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @IS_FC(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_11__* @ISP_FC_PC(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_10__* @ISP_SPI_PC(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @IS_SCSI(%struct.TYPE_9__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strtouq(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

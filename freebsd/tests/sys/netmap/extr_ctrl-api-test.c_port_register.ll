; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_port_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_port_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32 }
%struct.nmreq_register = type { i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.nmreq_header = type { i64, i64, i32 }

@.str = private unnamed_addr constant [69 x i8] c"Testing NETMAP_REQ_REGISTER(mode=%d,ringid=%d,flags=0x%llx) on '%s'\0A\00", align 1
@NETMAP_REQ_REGISTER = common dso_local global i32 0, align 4
@NIOCCTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ioctl(/dev/netmap, NIOCCTRL, REGISTER)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"nr_offset 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"nr_memsize %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"nr_tx_slots %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"nr_rx_slots %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"nr_tx_rings %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"nr_rx_rings %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"nr_host_tx_rings %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"nr_host_rx_rings %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"nr_mem_id %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"nr_extra_bufs %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @port_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_register(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca %struct.nmreq_register, align 8
  %5 = alloca %struct.nmreq_header, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %8 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %9 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %13 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %16 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %19 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %14, i64 %17, i32 %20)
  %22 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %23 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @nmreq_hdr_init(%struct.nmreq_header* %5, i32 %24)
  %26 = load i32, i32* @NETMAP_REQ_REGISTER, align 4
  %27 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = ptrtoint %struct.nmreq_register* %4 to i64
  %29 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %31 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %30, i32 0, i32 12
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  %34 = call i32 @memset(%struct.nmreq_register* %4, i32 0, i32 96)
  %35 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %36 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %40 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %44 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %48 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 3
  store i64 %49, i64* %50, align 8
  %51 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %52 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 4
  store i64 %53, i64* %54, align 8
  %55 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %56 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 5
  store i64 %57, i64* %58, align 8
  %59 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %60 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 6
  store i64 %61, i64* %62, align 8
  %63 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %64 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 7
  store i64 %65, i64* %66, align 8
  %67 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %68 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %67, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 8
  store i64 %69, i64* %70, align 8
  %71 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %72 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %71, i32 0, i32 9
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 9
  store i64 %73, i64* %74, align 8
  %75 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %76 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 10
  store i64 %77, i64* %78, align 8
  %79 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %80 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NIOCCTRL, align 4
  %83 = call i32 @ioctl(i32 %81, i32 %82, %struct.nmreq_header* %5)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %1
  %87 = call i32 @perror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %302

89:                                               ; preds = %1
  %90 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 12
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 11
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  %96 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  %99 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %100)
  %102 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %103)
  %105 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 9
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 %106)
  %108 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i64 %109)
  %111 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 8
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %112)
  %114 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 %115)
  %117 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 10
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64 %118)
  %120 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 11
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %263

123:                                              ; preds = %89
  %124 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %125 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %263

130:                                              ; preds = %123
  %131 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %132 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %263

137:                                              ; preds = %130
  %138 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %139 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %144, label %263

144:                                              ; preds = %137
  %145 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %146 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %149, %144
  %154 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %155 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %156, %158
  br i1 %159, label %160, label %263

160:                                              ; preds = %153, %149
  %161 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %162 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %165, %160
  %170 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %171 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %172, %174
  br i1 %175, label %176, label %263

176:                                              ; preds = %169, %165
  %177 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %178 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 6
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %181, %176
  %186 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %187 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %188, %190
  br i1 %191, label %192, label %263

192:                                              ; preds = %185, %181
  %193 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %194 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %193, i32 0, i32 9
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 9
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %197, %192
  %202 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %203 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %202, i32 0, i32 9
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 9
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %204, %206
  br i1 %207, label %208, label %263

208:                                              ; preds = %201, %197
  %209 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %210 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %209, i32 0, i32 7
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %213, %208
  %218 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %219 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %218, i32 0, i32 7
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 7
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %220, %222
  br i1 %223, label %224, label %263

224:                                              ; preds = %217, %213
  %225 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %226 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %225, i32 0, i32 8
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 8
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %240, label %233

233:                                              ; preds = %229, %224
  %234 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %235 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %234, i32 0, i32 8
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 8
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %236, %238
  br i1 %239, label %240, label %263

240:                                              ; preds = %233, %229
  %241 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %242 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %245, %240
  %250 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %251 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %252, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %249, %245
  %257 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %258 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %257, i32 0, i32 10
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 10
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %259, %261
  br label %263

263:                                              ; preds = %256, %249, %233, %217, %201, %185, %169, %153, %137, %130, %123, %89
  %264 = phi i1 [ false, %249 ], [ false, %233 ], [ false, %217 ], [ false, %201 ], [ false, %185 ], [ false, %169 ], [ false, %153 ], [ false, %137 ], [ false, %130 ], [ false, %123 ], [ false, %89 ], [ %262, %256 ]
  %265 = zext i1 %264 to i32
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* %6, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %263
  store i32 -1, i32* %2, align 4
  br label %302

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %273 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %272, i32 0, i32 4
  store i64 %271, i64* %273, align 8
  %274 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 5
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %277 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %276, i32 0, i32 5
  store i64 %275, i64* %277, align 8
  %278 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 6
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %281 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %280, i32 0, i32 6
  store i64 %279, i64* %281, align 8
  %282 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 9
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %285 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %284, i32 0, i32 9
  store i64 %283, i64* %285, align 8
  %286 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 7
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %289 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %288, i32 0, i32 7
  store i64 %287, i64* %289, align 8
  %290 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 8
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %293 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %292, i32 0, i32 8
  store i64 %291, i64* %293, align 8
  %294 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %297 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %296, i32 0, i32 3
  store i64 %295, i64* %297, align 8
  %298 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %4, i32 0, i32 10
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %301 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %300, i32 0, i32 10
  store i64 %299, i64* %301, align 8
  store i32 0, i32* %2, align 4
  br label %302

302:                                              ; preds = %269, %268, %86
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i32 @nmreq_hdr_init(%struct.nmreq_header*, i32) #1

declare dso_local i32 @memset(%struct.nmreq_register*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.nmreq_header*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

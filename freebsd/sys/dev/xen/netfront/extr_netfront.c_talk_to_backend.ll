; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_talk_to_backend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_talk_to_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { i32, %struct.TYPE_2__*, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xs_transaction = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"parsing %s/mac\00", align 1
@XST_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"multi-queue-max-queues\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@xn_num_queues = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"multi-queue-num-queues\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"writing multi-queue-num-queues\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"request-rx-copy\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"writing request-rx-copy\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"feature-rx-notify\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"writing feature-rx-notify\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"feature-sg\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"writing feature-sg\00", align 1
@IFCAP_LRO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"feature-gso-tcpv4\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"writing feature-gso-tcpv4\00", align 1
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"feature-no-csum-offload\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"writing feature-no-csum-offload\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.netfront_info*)* @talk_to_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talk_to_backend(i32 %0, %struct.netfront_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.netfront_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xs_transaction, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.netfront_info* %1, %struct.netfront_info** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @xenbus_get_node(i32 %13)
  store i8* %14, i8** %8, align 8
  store i64 0, i64* %11, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %17 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @xen_net_read_mac(i32 %15, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 (i32, i32, i8*, ...) @xenbus_dev_fatal(i32 %23, i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %210

27:                                               ; preds = %2
  %28 = load i32, i32* @XST_NIL, align 4
  %29 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %30 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @xenbus_get_otherend_path(i32 %31)
  %33 = call i32 @xs_scanf(i32 %28, i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %11)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i64 1, i64* %11, align 8
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i64, i64* @xn_num_queues, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @setup_device(i32 %45, %struct.netfront_info* %46, i64 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %210

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %192, %52
  %54 = call i32 @xs_transaction_start(%struct.xs_transaction* %7)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32, i32, i8*, ...) @xenbus_dev_fatal(i32 %58, i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %207

61:                                               ; preds = %53
  %62 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %63 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %69 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %73 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = call i32 @write_queue_xenstore_keys(i32 %67, i32* %71, i32* %75, %struct.xs_transaction* %7, i32 0)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %203

80:                                               ; preds = %66
  br label %122

81:                                               ; preds = %61
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %84 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %7, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @xs_printf(i32 %87, i8* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %198

92:                                               ; preds = %81
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %118, %92
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %96 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %93
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %102 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %108 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = call i32 @write_queue_xenstore_keys(i32 %100, i32* %106, i32* %112, %struct.xs_transaction* %7, i32 1)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %99
  br label %203

117:                                              ; preds = %99
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %93

121:                                              ; preds = %93
  br label %122

122:                                              ; preds = %121, %80
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %7, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @xs_printf(i32 %125, i8* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %198

130:                                              ; preds = %122
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %7, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @xs_printf(i32 %133, i8* %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 1)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %198

138:                                              ; preds = %130
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %7, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @xs_printf(i32 %141, i8* %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 1)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %198

146:                                              ; preds = %138
  %147 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %148 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IFCAP_LRO, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %146
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %7, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @xs_printf(i32 %158, i8* %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 1)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  br label %198

163:                                              ; preds = %155
  br label %164

164:                                              ; preds = %163, %146
  %165 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %166 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @IFCAP_RXCSUM, align 4
  %171 = and i32 %169, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %164
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %7, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @xs_printf(i32 %176, i8* %174, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 1)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  br label %198

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %164
  %183 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %7, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @xs_transaction_end(i32 %184, i32 0)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %182
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @EAGAIN, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  br label %53

193:                                              ; preds = %188
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 (i32, i32, i8*, ...) @xenbus_dev_fatal(i32 %194, i32 %195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  br label %207

197:                                              ; preds = %182
  store i32 0, i32* %3, align 4
  br label %212

198:                                              ; preds = %180, %162, %145, %137, %129, %91
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load i8*, i8** %6, align 8
  %202 = call i32 (i32, i32, i8*, ...) @xenbus_dev_fatal(i32 %199, i32 %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %198, %116, %79
  %204 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %7, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @xs_transaction_end(i32 %205, i32 1)
  br label %207

207:                                              ; preds = %203, %193, %57
  %208 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %209 = call i32 @netif_free(%struct.netfront_info* %208)
  br label %210

210:                                              ; preds = %207, %51, %22
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %210, %197
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i8* @xenbus_get_node(i32) #1

declare dso_local i32 @xen_net_read_mac(i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*, ...) #1

declare dso_local i32 @xs_scanf(i32, i32, i8*, i32*, i8*, i64*) #1

declare dso_local i32 @xenbus_get_otherend_path(i32) #1

declare dso_local i32 @setup_device(i32, %struct.netfront_info*, i64) #1

declare dso_local i32 @xs_transaction_start(%struct.xs_transaction*) #1

declare dso_local i32 @write_queue_xenstore_keys(i32, i32*, i32*, %struct.xs_transaction*, i32) #1

declare dso_local i32 @xs_printf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @xs_transaction_end(i32, i32) #1

declare dso_local i32 @netif_free(%struct.netfront_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

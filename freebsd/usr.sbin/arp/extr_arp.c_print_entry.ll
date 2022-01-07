; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_print_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_print_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_nameindex = type { i64, i64 }
%struct.timespec = type { i64 }
%struct.sockaddr_dl = type { i64, i32, i32, i64 }
%struct.sockaddr_in = type { i32 }
%struct.rt_msghdr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hostent = type { i8* }
%struct.ether_addr = type { i32 }

@ifnameindex = common dso_local global %struct.if_nameindex* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"cannot retrieve interface names\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"arp-cache\00", align 1
@nflag = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@h_errno = common dso_local global i64 0, align 8
@TRY_AGAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"{:hostname/%s} ({:ip-address/%s}) at \00", align 1
@ETHER_ADDR_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"{:mac-address/%s}\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"{d:/(incomplete)}{en:incomplete/true}\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c" on {:interface/%s}\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"{d:/ permanent}{en:permanent/true}\00", align 1
@print_entry.tp = internal global %struct.timespec zeroinitializer, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@expire_time = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c" expires in {:expires/%d} seconds\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"{d:/ expired}{en:expired/true}\00", align 1
@RTF_ANNOUNCE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"{d:/ published}{en:published/true}\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c" [{:type/ethernet}]\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c" [{:type/fddi}]\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c" [{:type/atm}]\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c" [{:type/vlan}]\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c" [{:type/firewire}]\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c" [{:type/bridge}]\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c" [{:type/infiniband}]\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_dl*, %struct.sockaddr_in*, %struct.rt_msghdr*)* @print_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_entry(%struct.sockaddr_dl* %0, %struct.sockaddr_in* %1, %struct.rt_msghdr* %2) #0 {
  %4 = alloca %struct.sockaddr_dl*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.rt_msghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca %struct.if_nameindex*, align 8
  %10 = alloca i32, align 4
  store %struct.sockaddr_dl* %0, %struct.sockaddr_dl** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  store %struct.rt_msghdr* %2, %struct.rt_msghdr** %6, align 8
  %11 = load %struct.if_nameindex*, %struct.if_nameindex** @ifnameindex, align 8
  %12 = icmp eq %struct.if_nameindex* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = call %struct.if_nameindex* (...) @if_nameindex()
  store %struct.if_nameindex* %14, %struct.if_nameindex** @ifnameindex, align 8
  %15 = icmp eq %struct.if_nameindex* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  br label %19

19:                                               ; preds = %18, %3
  %20 = call i32 @xo_open_instance(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @nflag, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %26 = ptrtoint i32* %25 to i32
  %27 = load i32, i32* @AF_INET, align 4
  %28 = call %struct.hostent* @gethostbyaddr(i32 %26, i32 4, i32 %27)
  store %struct.hostent* %28, %struct.hostent** %8, align 8
  br label %30

29:                                               ; preds = %19
  store %struct.hostent* null, %struct.hostent** %8, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.hostent*, %struct.hostent** %8, align 8
  %32 = icmp ne %struct.hostent* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.hostent*, %struct.hostent** %8, align 8
  %35 = getelementptr inbounds %struct.hostent, %struct.hostent* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %7, align 8
  br label %43

37:                                               ; preds = %30
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %38 = load i64, i64* @h_errno, align 8
  %39 = load i64, i64* @TRY_AGAIN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* @nflag, align 4
  br label %42

42:                                               ; preds = %41, %37
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @inet_ntoa(i32 %47)
  %49 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %44, i32 %48)
  %50 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %51 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %100

54:                                               ; preds = %43
  %55 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %56 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 132
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %61 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 128
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %66 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 133
  br i1 %68, label %69, label %81

69:                                               ; preds = %64, %59, %54
  %70 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %71 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %77 = call i64 @LLADDR(%struct.sockaddr_dl* %76)
  %78 = inttoptr i64 %77 to %struct.ether_addr*
  %79 = call i32 @ether_ntoa(%struct.ether_addr* %78)
  %80 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %99

81:                                               ; preds = %69, %64
  %82 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %83 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %88 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  br label %92

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %86
  %93 = phi i32 [ %90, %86 ], [ 0, %91 ]
  store i32 %93, i32* %10, align 4
  %94 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %95 = call i32 @link_ntoa(%struct.sockaddr_dl* %94)
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %95, %96
  %98 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %92, %75
  br label %102

100:                                              ; preds = %43
  %101 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %99
  %103 = load %struct.if_nameindex*, %struct.if_nameindex** @ifnameindex, align 8
  store %struct.if_nameindex* %103, %struct.if_nameindex** %9, align 8
  br label %104

104:                                              ; preds = %133, %102
  %105 = load %struct.if_nameindex*, %struct.if_nameindex** %9, align 8
  %106 = icmp ne %struct.if_nameindex* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load %struct.if_nameindex*, %struct.if_nameindex** @ifnameindex, align 8
  %109 = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.if_nameindex*, %struct.if_nameindex** @ifnameindex, align 8
  %114 = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %112, %107, %104
  %118 = phi i1 [ false, %107 ], [ false, %104 ], [ %116, %112 ]
  br i1 %118, label %119, label %136

119:                                              ; preds = %117
  %120 = load %struct.if_nameindex*, %struct.if_nameindex** %9, align 8
  %121 = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %124 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %122, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  %128 = load %struct.if_nameindex*, %struct.if_nameindex** %9, align 8
  %129 = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %130)
  br label %136

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.if_nameindex*, %struct.if_nameindex** %9, align 8
  %135 = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %134, i32 1
  store %struct.if_nameindex* %135, %struct.if_nameindex** %9, align 8
  br label %104

136:                                              ; preds = %127, %117
  %137 = load %struct.rt_msghdr*, %struct.rt_msghdr** %6, align 8
  %138 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %165

144:                                              ; preds = %136
  %145 = load i64, i64* getelementptr inbounds (%struct.timespec, %struct.timespec* @print_entry.tp, i32 0, i32 0), align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %149 = call i32 @clock_gettime(i32 %148, %struct.timespec* @print_entry.tp)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load %struct.rt_msghdr*, %struct.rt_msghdr** %6, align 8
  %152 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* getelementptr inbounds (%struct.timespec, %struct.timespec* @print_entry.tp, i32 0, i32 0), align 8
  %156 = sub nsw i64 %154, %155
  store i64 %156, i64* @expire_time, align 8
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %150
  %159 = load i64, i64* @expire_time, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %160)
  br label %164

162:                                              ; preds = %150
  %163 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %158
  br label %165

165:                                              ; preds = %164, %142
  %166 = load %struct.rt_msghdr*, %struct.rt_msghdr** %6, align 8
  %167 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @RTF_ANNOUNCE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %165
  %175 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %176 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  switch i32 %177, label %192 [
    i32 132, label %178
    i32 131, label %180
    i32 134, label %182
    i32 128, label %184
    i32 130, label %186
    i32 133, label %188
    i32 129, label %190
  ]

178:                                              ; preds = %174
  %179 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %193

180:                                              ; preds = %174
  %181 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %193

182:                                              ; preds = %174
  %183 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %193

184:                                              ; preds = %174
  %185 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  br label %193

186:                                              ; preds = %174
  %187 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  br label %193

188:                                              ; preds = %174
  %189 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  br label %193

190:                                              ; preds = %174
  %191 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  br label %193

192:                                              ; preds = %174
  br label %193

193:                                              ; preds = %192, %190, %188, %186, %184, %182, %180, %178
  %194 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %195 = call i32 @xo_close_instance(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.if_nameindex* @if_nameindex(...) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local %struct.hostent* @gethostbyaddr(i32, i32, i32) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ether_ntoa(%struct.ether_addr*) #1

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @link_ntoa(%struct.sockaddr_dl*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @xo_close_instance(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

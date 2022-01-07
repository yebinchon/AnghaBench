; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/wpa/wpa_supplicant/extr_Packet32.c_PacketGetAdapterNames.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/wpa/wpa_supplicant/extr_Packet32.c_PacketGetAdapterNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_msghdr = type { i64, i32 }
%struct.sockaddr_dl = type { i32, i32 }

@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@NET_RT_IFLIST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RTM_IFINFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"wlan\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PacketGetAdapterNames(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.if_msghdr*, align 8
  %9 = alloca %struct.sockaddr_dl*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load i8*, i8** %13, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bzero(i8* %18, i32 %20)
  store i64 0, i64* %7, align 8
  %22 = load i32, i32* @CTL_NET, align 4
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load i32, i32* @PF_ROUTE, align 4
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @NET_RT_IFLIST, align 4
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 %28, i32* %29, align 16
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %32 = call i64 @sysctl(i32* %31, i32 6, i8* null, i64* %7, i32* null, i32 0)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %208

36:                                               ; preds = %2
  %37 = load i64, i64* %7, align 8
  %38 = call i8* @malloc(i64 %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %208

43:                                               ; preds = %36
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @sysctl(i32* %44, i32 6, i8* %45, i64* %7, i32* null, i32 0)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %208

52:                                               ; preds = %43
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %10, align 8
  store i8* %56, i8** %12, align 8
  br label %57

57:                                               ; preds = %119, %52
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ult i8* %58, %59
  br i1 %60, label %61, label %126

61:                                               ; preds = %57
  %62 = load i8*, i8** %12, align 8
  %63 = bitcast i8* %62 to %struct.if_msghdr*
  store %struct.if_msghdr* %63, %struct.if_msghdr** %8, align 8
  %64 = load %struct.if_msghdr*, %struct.if_msghdr** %8, align 8
  %65 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RTM_IFINFO, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %119

69:                                               ; preds = %61
  %70 = load %struct.if_msghdr*, %struct.if_msghdr** %8, align 8
  %71 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %70, i64 1
  %72 = bitcast %struct.if_msghdr* %71 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %72, %struct.sockaddr_dl** %9, align 8
  %73 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %74 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %77 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @strnstr(i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %69
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %84 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %82, %85
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %3, align 4
  br label %208

94:                                               ; preds = %81
  %95 = load i8*, i8** %13, align 8
  %96 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %97 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %100 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strncpy(i8* %95, i32 %98, i32 %101)
  %103 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %104 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i8*, i8** %13, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %13, align 8
  %110 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %111 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %118

118:                                              ; preds = %94, %69
  br label %119

119:                                              ; preds = %118, %61
  %120 = load %struct.if_msghdr*, %struct.if_msghdr** %8, align 8
  %121 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %12, align 8
  br label %57

126:                                              ; preds = %57
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %13, align 8
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  %131 = load i8*, i8** %10, align 8
  store i8* %131, i8** %12, align 8
  br label %132

132:                                              ; preds = %194, %126
  %133 = load i8*, i8** %12, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = icmp ult i8* %133, %134
  br i1 %135, label %136, label %201

136:                                              ; preds = %132
  %137 = load i8*, i8** %12, align 8
  %138 = bitcast i8* %137 to %struct.if_msghdr*
  store %struct.if_msghdr* %138, %struct.if_msghdr** %8, align 8
  %139 = load %struct.if_msghdr*, %struct.if_msghdr** %8, align 8
  %140 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @RTM_IFINFO, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %194

144:                                              ; preds = %136
  %145 = load %struct.if_msghdr*, %struct.if_msghdr** %8, align 8
  %146 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %145, i64 1
  %147 = bitcast %struct.if_msghdr* %146 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %147, %struct.sockaddr_dl** %9, align 8
  %148 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %149 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %152 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @strnstr(i32 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %193

156:                                              ; preds = %144
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %159 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %157, %160
  %162 = load i32*, i32** %5, align 8
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %161, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %156
  %166 = load i8*, i8** %10, align 8
  %167 = call i32 @free(i8* %166)
  %168 = load i32, i32* @FALSE, align 4
  store i32 %168, i32* %3, align 4
  br label %208

169:                                              ; preds = %156
  %170 = load i8*, i8** %13, align 8
  %171 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %172 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %175 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @strncpy(i8* %170, i32 %173, i32 %176)
  %178 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %179 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  %182 = load i8*, i8** %13, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %13, align 8
  %185 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %186 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %16, align 4
  br label %193

193:                                              ; preds = %169, %144
  br label %194

194:                                              ; preds = %193, %136
  %195 = load %struct.if_msghdr*, %struct.if_msghdr** %8, align 8
  %196 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %12, align 8
  br label %132

201:                                              ; preds = %132
  %202 = load i8*, i8** %10, align 8
  %203 = call i32 @free(i8* %202)
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  %206 = load i32*, i32** %5, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* @TRUE, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %201, %165, %90, %48, %41, %34
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strnstr(i32, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

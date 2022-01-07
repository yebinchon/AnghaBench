; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rt_msghdr = type { i32 }

@IF_NAMESIZE = common dso_local global i32 0, align 4
@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@NET_RT_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"route-sysctl-estimate\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"could not reallocate memory\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"actual retrieval of routing table\00", align 1
@rifname = common dso_local global i64 0, align 8
@RTF_LLINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32 (%struct.sockaddr_dl*, %struct.sockaddr_in*, %struct.rt_msghdr*)**)* @search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search(i64 %0, i32 (%struct.sockaddr_dl*, %struct.sockaddr_in*, %struct.rt_msghdr*)** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32 (%struct.sockaddr_dl*, %struct.sockaddr_in*, %struct.rt_msghdr*)**, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.rt_msghdr*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_dl*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 (%struct.sockaddr_dl*, %struct.sockaddr_in*, %struct.rt_msghdr*)** %1, i32 (%struct.sockaddr_dl*, %struct.sockaddr_in*, %struct.rt_msghdr*)*** %5, align 8
  %19 = load i32, i32* @IF_NAMESIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* @CTL_NET, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 %23, i32* %24, align 16
  %25 = load i32, i32* @PF_ROUTE, align 4
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* @AF_INET, align 4
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @NET_RT_FLAGS, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 %30, i32* %31, align 16
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %34 = call i32 @sysctl(i32* %33, i32 6, i8* null, i64* %7, i32* null, i32 0)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %2
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %137

42:                                               ; preds = %38
  store i8* null, i8** %9, align 8
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i8* @reallocf(i8* %44, i64 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @sysctl(i32* %52, i32 6, i8* %53, i64* %7, i32* null, i32 0)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @ENOMEM, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %51
  br label %67

62:                                               ; preds = %57
  %63 = load i64, i64* %7, align 8
  %64 = udiv i64 %63, 8
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %43

67:                                               ; preds = %61
  %68 = load i32, i32* %16, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i8*, i8** %9, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %8, align 8
  %76 = load i8*, i8** %9, align 8
  store i8* %76, i8** %10, align 8
  br label %77

77:                                               ; preds = %126, %72
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %81, label %133

81:                                               ; preds = %77
  %82 = load i8*, i8** %10, align 8
  %83 = bitcast i8* %82 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %83, %struct.rt_msghdr** %11, align 8
  %84 = load %struct.rt_msghdr*, %struct.rt_msghdr** %11, align 8
  %85 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %84, i64 1
  %86 = bitcast %struct.rt_msghdr* %85 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %86, %struct.sockaddr_in** %12, align 8
  %87 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %88 = bitcast %struct.sockaddr_in* %87 to i8*
  %89 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %90 = call i32 @SA_SIZE(%struct.sockaddr_in* %89)
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = bitcast i8* %92 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %93, %struct.sockaddr_dl** %13, align 8
  %94 = load i64, i64* @rifname, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %81
  %97 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %98 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @if_indextoname(i32 %99, i8* %22)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i64, i64* @rifname, align 8
  %104 = call i64 @strcmp(i8* %22, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %126

107:                                              ; preds = %102, %96, %81
  %108 = load i64, i64* %4, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i64, i64* %4, align 8
  %112 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %113 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %111, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %126

118:                                              ; preds = %110
  store i32 1, i32* %17, align 4
  br label %119

119:                                              ; preds = %118, %107
  %120 = load i32 (%struct.sockaddr_dl*, %struct.sockaddr_in*, %struct.rt_msghdr*)**, i32 (%struct.sockaddr_dl*, %struct.sockaddr_in*, %struct.rt_msghdr*)*** %5, align 8
  %121 = load i32 (%struct.sockaddr_dl*, %struct.sockaddr_in*, %struct.rt_msghdr*)*, i32 (%struct.sockaddr_dl*, %struct.sockaddr_in*, %struct.rt_msghdr*)** %120, align 8
  %122 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %123 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %124 = load %struct.rt_msghdr*, %struct.rt_msghdr** %11, align 8
  %125 = call i32 %121(%struct.sockaddr_dl* %122, %struct.sockaddr_in* %123, %struct.rt_msghdr* %124)
  br label %126

126:                                              ; preds = %119, %117, %106
  %127 = load %struct.rt_msghdr*, %struct.rt_msghdr** %11, align 8
  %128 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %10, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %10, align 8
  br label %77

133:                                              ; preds = %77
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %137

137:                                              ; preds = %133, %41
  %138 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #2

declare dso_local i32 @xo_err(i32, i8*) #2

declare dso_local i8* @reallocf(i8*, i64) #2

declare dso_local i32 @xo_errx(i32, i8*) #2

declare dso_local i32 @SA_SIZE(%struct.sockaddr_in*) #2

declare dso_local i64 @if_indextoname(i32, i8*) #2

declare dso_local i64 @strcmp(i8*, i64) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

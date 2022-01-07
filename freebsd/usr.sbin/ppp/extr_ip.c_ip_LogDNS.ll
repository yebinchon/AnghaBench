; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ip.c_ip_LogDNS.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ip.c_ip_LogDNS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udphdr = type { i8 }
%struct.dns_header = type { i64, i64 }

@OPCODE_QUERY = common dso_local global i64 0, align 8
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@LogDNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%sbound query %s %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udphdr*, i8*)* @ip_LogDNS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_LogDNS(%struct.udphdr* %0, i8* %1) #0 {
  %3 = alloca %struct.udphdr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dns_header, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.udphdr* %0, %struct.udphdr** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %18 = bitcast %struct.udphdr* %17 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %7, align 8
  %20 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %21 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @ntohs(i8 signext %22)
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 1
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %28, 21
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %153

31:                                               ; preds = %2
  %32 = load i8*, i8** %7, align 8
  store i8* %32, i8** %6, align 8
  %33 = bitcast %struct.dns_header* %5 to i8*
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 16
  store i8* %35, i8** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = sub i64 %37, 16
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %44, %31
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @ntohs(i8 signext %46)
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  br label %40

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %5, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @OPCODE_QUERY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %153

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.dns_header, %struct.dns_header* %5, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %153

62:                                               ; preds = %58
  %63 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %64 = add nsw i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = call i8* @llvm.stacksave()
  store i8* %66, i8** %11, align 8
  %67 = alloca i8, i64 %65, align 16
  store i64 %65, i64* %12, align 8
  store i8* %67, i8** %13, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = getelementptr inbounds i8, i8* %71, i64 -4
  store i8* %72, i8** %16, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %65 to i32
  %79 = sext i32 %78 to i64
  %80 = icmp sge i64 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %62
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %65
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  store i8* %84, i8** %16, align 8
  br label %85

85:                                               ; preds = %81, %62
  br label %86

86:                                               ; preds = %116, %85
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = icmp ult i8* %87, %88
  br i1 %89, label %90, label %129

90:                                               ; preds = %86
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %7, align 8
  %93 = load i8, i8* %91, align 1
  %94 = sext i8 %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = load i8*, i8** %16, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = icmp sgt i64 %96, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %90
  %104 = load i8*, i8** %16, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %103, %90
  %111 = load i8*, i8** %13, align 8
  %112 = icmp ne i8* %111, %67
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %13, align 8
  store i8 46, i8* %114, align 1
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i8*, i8** %13, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @memcpy(i8* %117, i8* %118, i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i8*, i8** %13, align 8
  %127 = zext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %13, align 8
  br label %86

129:                                              ; preds = %86
  %130 = load i8*, i8** %13, align 8
  store i8 0, i8* %130, align 1
  %131 = load i32, i32* @LogDNS, align 4
  %132 = call i64 @log_IsKept(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %129
  %135 = load i8*, i8** %16, align 8
  %136 = call i32 @memcpy(i8* %9, i8* %135, i32 1)
  %137 = load i8, i8* %9, align 1
  %138 = call i32 @ntohs(i8 signext %137)
  %139 = call i8* @dns_Qtype2Txt(i32 %138)
  store i8* %139, i8** %14, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  %142 = call i32 @memcpy(i8* %9, i8* %141, i32 1)
  %143 = load i8, i8* %9, align 1
  %144 = call i32 @ntohs(i8 signext %143)
  %145 = call i8* @dns_Qclass2Txt(i32 %144)
  store i8* %145, i8** %15, align 8
  %146 = load i32, i32* @LogDNS, align 4
  %147 = load i8*, i8** %4, align 8
  %148 = load i8*, i8** %15, align 8
  %149 = load i8*, i8** %14, align 8
  %150 = call i32 @log_Printf(i32 %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %147, i8* %148, i8* %149, i8* %67)
  br label %151

151:                                              ; preds = %134, %129
  %152 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %152)
  br label %153

153:                                              ; preds = %30, %151, %58, %53
  ret void
}

declare dso_local i32 @ntohs(i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @log_IsKept(i32) #1

declare dso_local i8* @dns_Qtype2Txt(i32) #1

declare dso_local i8* @dns_Qclass2Txt(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

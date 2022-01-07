; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpconnect/extr_tcpconnect.c_tcpconnect_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpconnect/extr_tcpconnect.c_tcpconnect_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"nonblock\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tcpmd5\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_MD5SIG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"setsockopt(TCP_MD5SIG)\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"fcntl(F_SETFL)\00", align 1
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @tcpconnect_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpconnect_client(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 5
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = call i32 (...) @usage()
  br label %20

20:                                               ; preds = %18, %15
  store i64 3, i64* %7, align 8
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load i8**, i8*** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i8**, i8*** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %12, align 4
  br label %42

42:                                               ; preds = %41, %34
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %21

46:                                               ; preds = %21
  %47 = call i32 @bzero(%struct.sockaddr_in* %5, i32 16)
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i32 16, i32* %48, align 4
  %49 = load i32, i32* @AF_INET, align 4
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load i8**, i8*** %4, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %55 = call i64 @inet_aton(i8* %53, i32* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %46
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strtoul(i8* %62, i8** %9, i32 10)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp slt i64 %64, 1
  br i1 %65, label %74, label %66

66:                                               ; preds = %59
  %67 = load i64, i64* %8, align 8
  %68 = icmp sgt i64 %67, 65535
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %9, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69, %66, %59
  %75 = call i32 (...) @usage()
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @htons(i64 %77)
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load i8**, i8*** %4, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strtoul(i8* %82, i8** %9, i32 10)
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp slt i64 %84, 1
  br i1 %85, label %94, label %86

86:                                               ; preds = %76
  %87 = load i64, i64* %6, align 8
  %88 = icmp sgt i64 %87, 100000
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %9, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89, %86, %76
  %95 = call i32 (...) @usage()
  br label %96

96:                                               ; preds = %94, %89
  store i64 0, i64* %7, align 8
  br label %97

97:                                               ; preds = %166, %96
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %6, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %169

101:                                              ; preds = %97
  %102 = load i32, i32* @PF_INET, align 4
  %103 = load i32, i32* @SOCK_STREAM, align 4
  %104 = call i32 @socket(i32 %102, i32 %103, i32 0)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %101
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @IPPROTO_TCP, align 4
  %112 = load i32, i32* @TCP_MD5SIG, align 4
  %113 = call i64 @setsockopt(i32 %110, i32 %111, i32 %112, i32* %12, i32 4)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %109
  %116 = load i64, i64* @errno, align 8
  %117 = load i64, i64* @ENOPROTOOPT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i32, i32* %12, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 @err(i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %131

124:                                              ; preds = %119, %115
  %125 = load i64, i64* @errno, align 8
  %126 = load i64, i64* @ENOPROTOOPT, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %124
  br label %131

131:                                              ; preds = %130, %122
  br label %132

132:                                              ; preds = %131, %109
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @F_SETFL, align 4
  %138 = load i32, i32* @O_NONBLOCK, align 4
  %139 = call i64 @fcntl(i32 %136, i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = call i32 @err(i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %135
  %144 = load i32, i32* %10, align 4
  %145 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %146 = call i32 @connect(i32 %144, %struct.sockaddr* %145, i32 16)
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i64, i64* @errno, align 8
  %150 = load i64, i64* @EINPROGRESS, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %148, %143
  br label %163

155:                                              ; preds = %132
  %156 = load i32, i32* %10, align 4
  %157 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %158 = call i32 @connect(i32 %156, %struct.sockaddr* %157, i32 16)
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = call i32 @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %155
  br label %163

163:                                              ; preds = %162, %154
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @close(i32 %164)
  br label %166

166:                                              ; preds = %163
  %167 = load i64, i64* %7, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %7, align 8
  br label %97

169:                                              ; preds = %97
  ret void
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i64 @inet_aton(i8*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

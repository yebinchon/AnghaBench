; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/netreceive/extr_netreceive.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/netreceive/extr_netreceive.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo*, i32 }
%struct.td_desc = type { i32 }

@MAXSOCK = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"SO_RCVBUF\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"netreceive %d sockets x %d threads listening on UDP port %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.td_desc**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %14, align 4
  store i8* null, i8** %16, align 8
  %21 = load i32, i32* @MAXSOCK, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 (...) @usage()
  br label %29

29:                                               ; preds = %27, %2
  %30 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 40)
  %31 = load i32, i32* @PF_UNSPEC, align 4
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @SOCK_DGRAM, align 4
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @AI_PASSIVE, align 4
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 6
  store i32 %35, i32* %36, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strtoul(i8* %39, i8** %9, i32 10)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %51, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 65535
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %43, %29
  %52 = call i32 (...) @usage()
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %54, 2
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strtoul(i8* %59, i8** %9, i32 10)
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = icmp sgt i32 %65, 64
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %61
  %68 = call i32 (...) @usage()
  br label %69

69:                                               ; preds = %67, %64
  %70 = call i8* @malloc(i32 65536)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %185

75:                                               ; preds = %69
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @bzero(i8* %76, i32 65536)
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @getaddrinfo(i32* null, i8* %80, %struct.addrinfo* %6, %struct.addrinfo** %8)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = call i8* @gai_strerror(i32 %85)
  %87 = call i32 @perror(i8* %86)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %185

88:                                               ; preds = %75
  store i32 0, i32* %19, align 4
  %89 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %89, %struct.addrinfo** %7, align 8
  br label %90

90:                                               ; preds = %161, %88
  %91 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %92 = icmp ne %struct.addrinfo* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* @MAXSOCK, align 4
  %96 = icmp slt i32 %94, %95
  br label %97

97:                                               ; preds = %93, %90
  %98 = phi i1 [ false, %90 ], [ %96, %93 ]
  br i1 %98, label %99, label %165

99:                                               ; preds = %97
  %100 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %107 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @socket(i32 %102, i32 %105, i32 %108)
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %24, i64 %111
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %24, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %99
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %161

119:                                              ; preds = %99
  store i32 131072, i32* %13, align 4
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %24, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SOL_SOCKET, align 4
  %125 = load i32, i32* @SO_RCVBUF, align 4
  %126 = call i64 @setsockopt(i32 %123, i32 %124, i32 %125, i32* %13, i32 4)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %119
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %24, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @close(i32 %132)
  br label %161

134:                                              ; preds = %119
  %135 = load i32, i32* %19, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %24, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %140 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %143 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @bind(i32 %138, i32 %141, i32 %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %134
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %24, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @close(i32 %151)
  br label %161

153:                                              ; preds = %134
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %24, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @listen(i32 %157, i32 5)
  %159 = load i32, i32* %19, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %19, align 4
  br label %161

161:                                              ; preds = %153, %147, %128, %118
  %162 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %163 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i32 0, i32 5
  %164 = load %struct.addrinfo*, %struct.addrinfo** %163, align 8
  store %struct.addrinfo* %164, %struct.addrinfo** %7, align 8
  br label %90

165:                                              ; preds = %97
  %166 = load i32, i32* %19, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i8*, i8** %16, align 8
  %170 = call i32 @perror(i8* %169)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %185

171:                                              ; preds = %165
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %14, align 4
  %178 = call %struct.td_desc** @make_threads(i32* %24, i32 %176, i32 %177)
  store %struct.td_desc** %178, %struct.td_desc*** %15, align 8
  %179 = load %struct.td_desc**, %struct.td_desc*** %15, align 8
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @main_thread(%struct.td_desc** %179, i32 %180, i32 %181)
  %183 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %184 = call i32 @freeaddrinfo(%struct.addrinfo* %183)
  store i32 0, i32* %20, align 4
  br label %185

185:                                              ; preds = %171, %168, %84, %73
  %186 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %20, align 4
  switch i32 %187, label %190 [
    i32 0, label %188
    i32 1, label %188
  ]

188:                                              ; preds = %185, %185
  %189 = load i32, i32* %3, align 4
  ret i32 %189

190:                                              ; preds = %185
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @strtoul(i8*, i8**, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @bind(i32, i32, i32) #2

declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @printf(i8*, i32, i32, i32) #2

declare dso_local %struct.td_desc** @make_threads(i32*, i32, i32) #2

declare dso_local i32 @main_thread(%struct.td_desc**, i32, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

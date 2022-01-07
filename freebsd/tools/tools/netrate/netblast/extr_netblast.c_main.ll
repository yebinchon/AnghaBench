; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/netblast/extr_netblast.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/netblast/extr_netblast.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, %struct.addrinfo* }

@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid port number: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"payloadsize > 32768\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid duration time: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"connect\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 5
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (...) @usage()
  br label %21

21:                                               ; preds = %19, %2
  %22 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 24)
  %23 = load i32, i32* @PF_UNSPEC, align 4
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @SOCK_DGRAM, align 4
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @strtoul(i8* %29, i8** %11, i32 10)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %42, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %13, align 4
  %36 = icmp sgt i32 %35, 65535
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %34, %21
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @strtoul(i8* %52, i8** %11, i32 10)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57, %49
  %63 = call i32 (...) @usage()
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i64, i64* %6, align 8
  %66 = icmp sgt i64 %65, 32768
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %162

70:                                               ; preds = %64
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 4
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @strtoul(i8* %73, i8** %11, i32 10)
  %75 = ptrtoint i8* %74 to i64
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78, %70
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 4
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  %89 = call i32 (...) @usage()
  br label %90

90:                                               ; preds = %83, %78
  %91 = load i64, i64* %6, align 8
  %92 = call i8* @malloc(i64 %91)
  store i8* %92, i8** %12, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %162

97:                                               ; preds = %90
  %98 = load i8*, i8** %12, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @bzero(i8* %98, i64 %99)
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 2
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @getaddrinfo(i8* %103, i8* %106, %struct.addrinfo* %8, %struct.addrinfo** %10)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %97
  %111 = load i32, i32* %15, align 4
  %112 = call i8* @gai_strerror(i32 %111)
  %113 = call i32 @perror(i8* %112)
  store i32 -1, i32* %3, align 4
  br label %162

114:                                              ; preds = %97
  store i32 -1, i32* %14, align 4
  %115 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %115, %struct.addrinfo** %9, align 8
  br label %116

116:                                              ; preds = %144, %114
  %117 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %118 = icmp ne %struct.addrinfo* %117, null
  br i1 %118, label %119, label %148

119:                                              ; preds = %116
  %120 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %121 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %124 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @socket(i32 %122, i32 %125, i32 0)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %144

130:                                              ; preds = %119
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %133 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %136 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @connect(i32 %131, i32 %134, i32 %137)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @close(i32 %141)
  store i32 -1, i32* %14, align 4
  br label %144

143:                                              ; preds = %130
  br label %148

144:                                              ; preds = %140, %129
  %145 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %146 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %145, i32 0, i32 4
  %147 = load %struct.addrinfo*, %struct.addrinfo** %146, align 8
  store %struct.addrinfo* %147, %struct.addrinfo** %9, align 8
  br label %116

148:                                              ; preds = %143, %116
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i8*, i8** %16, align 8
  %153 = call i32 @perror(i8* %152)
  store i32 -1, i32* %3, align 4
  br label %162

154:                                              ; preds = %148
  %155 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %156 = call i32 @freeaddrinfo(%struct.addrinfo* %155)
  %157 = load i32, i32* %14, align 4
  %158 = load i64, i64* %7, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = load i64, i64* %6, align 8
  %161 = call i32 @blast_loop(i32 %157, i64 %158, i8* %159, i64 %160)
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %154, %151, %110, %95, %67
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @blast_loop(i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

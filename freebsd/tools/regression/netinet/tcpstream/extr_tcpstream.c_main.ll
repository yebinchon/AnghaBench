; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpstream/extr_tcpstream.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpstream/extr_tcpstream.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"client\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @usage()
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %77

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 5
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @usage()
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i32 @bzero(%struct.sockaddr_in* %6, i32 32)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 32, i32* %27, align 8
  %28 = load i8*, i8** @AF_INET, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  store i8* %28, i8** %29, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %34 = call i32 @inet_aton(i8* %32, %struct.TYPE_2__* %33)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %41)
  br label %43

43:                                               ; preds = %36, %25
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strtoul(i8* %46, i8** %9, i32 10)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp slt i64 %48, 1
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = load i64, i64* %7, align 8
  %52 = icmp sgt i64 %51, 65535
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %50, %43
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i64, i64* %7, align 8
  %62 = call i8* @htons(i64 %61)
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strtoul(i8* %66, i8** %9, i32 10)
  store i64 %67, i64* %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = call i32 (...) @usage()
  br label %74

74:                                               ; preds = %72, %60
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @tcpstream_client(%struct.sockaddr_in* byval(%struct.sockaddr_in) align 8 %6, i64 %75)
  br label %132

77:                                               ; preds = %14
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %129

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 4
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (...) @usage()
  br label %88

88:                                               ; preds = %86, %83
  %89 = call i32 @bzero(%struct.sockaddr_in* %6, i32 32)
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 32, i32* %90, align 8
  %91 = load i8*, i8** @AF_INET, align 8
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  store i8* %91, i8** %92, align 8
  %93 = load i32, i32* @INADDR_ANY, align 4
  %94 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strtoul(i8* %98, i8** %9, i32 10)
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  %101 = icmp slt i64 %100, 1
  br i1 %101, label %110, label %102

102:                                              ; preds = %88
  %103 = load i64, i64* %7, align 8
  %104 = icmp sgt i64 %103, 65535
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load i8*, i8** %9, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105, %102, %88
  %111 = call i32 (...) @usage()
  br label %112

112:                                              ; preds = %110, %105
  %113 = load i64, i64* %7, align 8
  %114 = call i8* @htons(i64 %113)
  %115 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i8* %114, i8** %115, align 8
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @strtoul(i8* %118, i8** %9, i32 10)
  store i64 %119, i64* %8, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = call i32 (...) @usage()
  br label %126

126:                                              ; preds = %124, %112
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @tcpstream_server(%struct.sockaddr_in* byval(%struct.sockaddr_in) align 8 %6, i64 %127)
  br label %131

129:                                              ; preds = %77
  %130 = call i32 (...) @usage()
  br label %131

131:                                              ; preds = %129, %126
  br label %132

132:                                              ; preds = %131, %74
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @inet_aton(i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @tcpstream_client(%struct.sockaddr_in* byval(%struct.sockaddr_in) align 8, i64) #1

declare dso_local i32 @tcpstream_server(%struct.sockaddr_in* byval(%struct.sockaddr_in) align 8, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

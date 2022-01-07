; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_fmt_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_fmt_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i32, i64 }
%struct.sockaddr_ng = type { i32 }

@fmt_sockaddr.buf = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@RTF_HOST = common dso_local global i32 0, align 4
@numeric_addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sockaddr*, %struct.sockaddr*, i32)* @fmt_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fmt_sockaddr(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %14 = icmp eq %struct.sockaddr* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %114

16:                                               ; preds = %3
  %17 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %50 [
    i32 131, label %20
    i32 128, label %41
    i32 129, label %47
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @RTF_HOST, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = load i32, i32* @numeric_addr, align 4
  %28 = call i8* @routename(%struct.sockaddr* %26, i32 %27)
  store i8* %28, i8** %8, align 8
  br label %40

29:                                               ; preds = %20
  %30 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %31 = icmp ne %struct.sockaddr* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %35 = call i8* @netname(%struct.sockaddr* %33, %struct.sockaddr* %34)
  store i8* %35, i8** %8, align 8
  br label %39

36:                                               ; preds = %29
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = call i8* @netname(%struct.sockaddr* %37, %struct.sockaddr* null)
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %25
  br label %112

41:                                               ; preds = %16
  %42 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %43 = bitcast %struct.sockaddr* %42 to %struct.sockaddr_ng*
  %44 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strlcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @fmt_sockaddr.buf, i64 0, i64 0), i32 %45, i32 128)
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @fmt_sockaddr.buf, i64 0, i64 0), i8** %8, align 8
  br label %112

47:                                               ; preds = %16
  %48 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %49 = call i8* @routename(%struct.sockaddr* %48, i32 1)
  store i8* %49, i8** %8, align 8
  br label %112

50:                                               ; preds = %16
  %51 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %52 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %9, align 8
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @fmt_sockaddr.buf, i64 0, i64 0), i8** %11, align 8
  %55 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %56 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %59 = bitcast %struct.sockaddr* %58 to i32*
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 128
  %64 = getelementptr inbounds i8, i8* %63, i64 -6
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %67 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @snprintf(i8* %65, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = load i8*, i8** %11, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %11, align 8
  br label %75

75:                                               ; preds = %110, %50
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = icmp ult i32* %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = icmp ult i8* %80, %81
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i1 [ false, %75 ], [ %82, %79 ]
  br i1 %84, label %85, label %111

85:                                               ; preds = %83
  %86 = load i8*, i8** %11, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %9, align 8
  %89 = load i32, i32* %87, align 4
  %90 = call i32 @snprintf(i8* %86, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = load i8*, i8** %11, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %11, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = icmp ult i32* %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %85
  %100 = load i8*, i8** %11, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %9, align 8
  %103 = load i32, i32* %101, align 4
  %104 = call i32 @snprintf(i8* %100, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = load i8*, i8** %11, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %11, align 8
  br label %110

110:                                              ; preds = %99, %85
  br label %75

111:                                              ; preds = %83
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @fmt_sockaddr.buf, i64 0, i64 0), i8** %8, align 8
  br label %112

112:                                              ; preds = %111, %47, %41, %40
  %113 = load i8*, i8** %8, align 8
  store i8* %113, i8** %4, align 8
  br label %114

114:                                              ; preds = %112, %15
  %115 = load i8*, i8** %4, align 8
  ret i8* %115
}

declare dso_local i8* @routename(%struct.sockaddr*, i32) #1

declare dso_local i8* @netname(%struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_parse_addr_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_parse_addr_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.addrinfo**)* @parse_addr_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_addr_port(i8* %0, i8* %1, %struct.addrinfo** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.addrinfo**, align 8
  %8 = alloca %struct.addrinfo, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.addrinfo** %2, %struct.addrinfo*** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %5, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 91
  br i1 %21, label %22, label %53

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  %25 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @free(i8* %29)
  store i32 1, i32* %4, align 4
  br label %106

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %12, align 8
  br label %52

39:                                               ; preds = %31
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 58
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %12, align 8
  br label %51

48:                                               ; preds = %39
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @free(i8* %49)
  store i32 1, i32* %4, align 4
  br label %106

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %37
  br label %88

53:                                               ; preds = %3
  %54 = load i8*, i8** %5, align 8
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %69, %53
  %56 = load i8*, i8** %11, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 58
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %11, align 8
  br label %55

72:                                               ; preds = %55
  %73 = load i32, i32* %14, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8*, i8** %5, align 8
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %6, align 8
  store i8* %77, i8** %12, align 8
  br label %87

78:                                               ; preds = %72
  %79 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  store i8* %83, i8** %12, align 8
  br label %86

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  store i8* %85, i8** %12, align 8
  br label %86

86:                                               ; preds = %84, %82
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %52
  %89 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 12)
  %90 = load i32, i32* @PF_UNSPEC, align 4
  %91 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @SOCK_STREAM, align 4
  %93 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @AI_PASSIVE, align 4
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.addrinfo**, %struct.addrinfo*** %7, align 8
  %99 = call i32 @getaddrinfo(i8* %96, i8* %97, %struct.addrinfo* %8, %struct.addrinfo** %98)
  store i32 %99, i32* %13, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %88, %48, %28
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

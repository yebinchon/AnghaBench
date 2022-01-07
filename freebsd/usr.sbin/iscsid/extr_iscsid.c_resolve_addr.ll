; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_resolve_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_resolve_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.addrinfo = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"empty address\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"malformed address\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"malformed address %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"3260\00", align 1
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AI_ADDRCONFIG = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"getaddrinfo for %s failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*, i8*, %struct.addrinfo**, i32)* @resolve_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_addr(%struct.connection* %0, i8* %1, %struct.addrinfo** %2, i32 %3) #0 {
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.addrinfo**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.addrinfo, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.addrinfo** %2, %struct.addrinfo*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @checked_strdup(i8* %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.connection*, %struct.connection** %5, align 8
  %25 = call i32 @fail(%struct.connection* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 91
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %10, align 8
  %36 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.connection*, %struct.connection** %5, align 8
  %41 = call i32 @fail(%struct.connection* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %39, %33
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i8* null, i8** %13, align 8
  br label %66

51:                                               ; preds = %44
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 58
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %59, i8** %13, align 8
  br label %65

60:                                               ; preds = %51
  %61 = load %struct.connection*, %struct.connection** %5, align 8
  %62 = call i32 @fail(%struct.connection* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %60, %57
  br label %66

66:                                               ; preds = %65, %50
  br label %100

67:                                               ; preds = %27
  %68 = load i8*, i8** %10, align 8
  store i8* %68, i8** %12, align 8
  br label %69

69:                                               ; preds = %83, %67
  %70 = load i8*, i8** %12, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i8*, i8** %12, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 58
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %12, align 8
  br label %69

86:                                               ; preds = %69
  %87 = load i32, i32* %15, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i8*, i8** %10, align 8
  store i8* %90, i8** %11, align 8
  store i8* null, i8** %13, align 8
  br label %99

91:                                               ; preds = %86
  %92 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i8* null, i8** %13, align 8
  br label %98

96:                                               ; preds = %91
  %97 = load i8*, i8** %10, align 8
  store i8* %97, i8** %13, align 8
  br label %98

98:                                               ; preds = %96, %95
  br label %99

99:                                               ; preds = %98, %89
  br label %100

100:                                              ; preds = %99, %66
  %101 = load i8*, i8** %13, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %107

107:                                              ; preds = %106, %103, %100
  %108 = call i32 @memset(%struct.addrinfo* %9, i32 0, i32 12)
  %109 = load i32, i32* @PF_UNSPEC, align 4
  %110 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 2
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @SOCK_STREAM, align 4
  %112 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @AI_ADDRCONFIG, align 4
  %114 = load i32, i32* @AI_NUMERICSERV, align 4
  %115 = or i32 %113, %114
  %116 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %107
  %120 = load i32, i32* @AI_PASSIVE, align 4
  %121 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119, %107
  %125 = load i8*, i8** %11, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load %struct.addrinfo**, %struct.addrinfo*** %7, align 8
  %128 = call i32 @getaddrinfo(i8* %125, i8* %126, %struct.addrinfo* %9, %struct.addrinfo** %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load %struct.connection*, %struct.connection** %5, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i8* @gai_strerror(i32 %133)
  %135 = call i32 @fail(%struct.connection* %132, i8* %134)
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* %14, align 4
  %138 = call i8* @gai_strerror(i32 %137)
  %139 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %136, i8* %138)
  br label %140

140:                                              ; preds = %131, %124
  ret void
}

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local i32 @fail(%struct.connection*, i8*) #1

declare dso_local i32 @log_errx(i32, i8*, ...) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i8* @gai_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

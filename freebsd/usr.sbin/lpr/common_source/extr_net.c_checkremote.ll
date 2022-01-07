; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_net.c_checkremote.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_net.c_checkremote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32, i8*, i32 }
%struct.addrinfo = type { i32, i32, %struct.addrinfo*, i8*, i8*, i8* }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@NI_MAXHOST = common dso_local global i32 0, align 4
@family = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i8* null, align 8
@AI_PASSIVE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"unable to get official name for local machine %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"unable to get address list for remote machine %s: %s\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @checkremote(%struct.printer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.printer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.printer* %0, %struct.printer** %3, align 8
  %17 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %4, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  %21 = load i32, i32* @NI_MAXHOST, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %24 = load i32, i32* @NI_MAXHOST, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %27 = load %struct.printer*, %struct.printer** %3, align 8
  %28 = getelementptr inbounds %struct.printer, %struct.printer* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load %struct.printer*, %struct.printer** %3, align 8
  %33 = getelementptr inbounds %struct.printer, %struct.printer* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  store i8* null, i8** %2, align 8
  store i32 1, i32* %16, align 4
  br label %147

34:                                               ; preds = %1
  %35 = load %struct.printer*, %struct.printer** %3, align 8
  %36 = getelementptr inbounds %struct.printer, %struct.printer* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.printer*, %struct.printer** %3, align 8
  %38 = getelementptr inbounds %struct.printer, %struct.printer* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i8* null, i8** %2, align 8
  store i32 1, i32* %16, align 4
  br label %147

42:                                               ; preds = %34
  %43 = trunc i64 %18 to i32
  %44 = call i32 @gethostname(i8* %20, i32 %43)
  %45 = sub i64 %18, 1
  %46 = getelementptr inbounds i8, i8* %20, i64 %45
  store i8 0, i8* %46, align 1
  %47 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 40)
  %48 = load i8*, i8** @family, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 5
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** @SOCK_STREAM, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** @AI_PASSIVE, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i8* %52, i8** %53, align 8
  %54 = call i32 @getaddrinfo(i8* %20, i32* null, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %54, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @gai_strerror(i32 %57)
  %59 = call i32 @asprintf(i8** %11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %58)
  %60 = load i8*, i8** %11, align 8
  store i8* %60, i8** %2, align 8
  store i32 1, i32* %16, align 4
  br label %147

61:                                               ; preds = %42
  %62 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 40)
  %63 = load i8*, i8** @family, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 5
  store i8* %63, i8** %64, align 8
  %65 = load i8*, i8** @SOCK_STREAM, align 8
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i8* %65, i8** %66, align 8
  %67 = load i8*, i8** @AI_PASSIVE, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i8* %67, i8** %68, align 8
  %69 = load %struct.printer*, %struct.printer** %3, align 8
  %70 = getelementptr inbounds %struct.printer, %struct.printer* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @getaddrinfo(i8* %71, i32* null, %struct.addrinfo* %6, %struct.addrinfo** %8)
  store i32 %72, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = load %struct.printer*, %struct.printer** %3, align 8
  %76 = getelementptr inbounds %struct.printer, %struct.printer* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @gai_strerror(i32 %78)
  %80 = call i32 @asprintf(i8** %11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %77, i32 %79)
  %81 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %82 = call i32 @freeaddrinfo(%struct.addrinfo* %81)
  %83 = load i8*, i8** %11, align 8
  store i8* %83, i8** %2, align 8
  store i32 1, i32* %16, align 4
  br label %147

84:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  %85 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %85, %struct.addrinfo** %9, align 8
  br label %86

86:                                               ; preds = %132, %84
  %87 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %88 = icmp ne %struct.addrinfo* %87, null
  br i1 %88, label %89, label %136

89:                                               ; preds = %86
  %90 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 0, i8* %90, align 16
  %91 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = trunc i64 %22 to i32
  %98 = load i32, i32* @NI_NUMERICHOST, align 4
  %99 = call i64 @getnameinfo(i32 %93, i32 %96, i8* %23, i32 %97, i32* null, i32 0, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %132

102:                                              ; preds = %89
  %103 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %103, %struct.addrinfo** %10, align 8
  br label %104

104:                                              ; preds = %127, %102
  %105 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %106 = icmp ne %struct.addrinfo* %105, null
  br i1 %106, label %107, label %131

107:                                              ; preds = %104
  %108 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %108, align 16
  %109 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %110 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %113 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = trunc i64 %25 to i32
  %116 = load i32, i32* @NI_NUMERICHOST, align 4
  %117 = call i64 @getnameinfo(i32 %111, i32 %114, i8* %26, i32 %115, i32* null, i32 0, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %127

120:                                              ; preds = %107
  %121 = call i64 @strcmp(i8* %23, i8* %26)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %123, %120
  br label %127

127:                                              ; preds = %126, %119
  %128 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %129 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %128, i32 0, i32 2
  %130 = load %struct.addrinfo*, %struct.addrinfo** %129, align 8
  store %struct.addrinfo* %130, %struct.addrinfo** %10, align 8
  br label %104

131:                                              ; preds = %104
  br label %132

132:                                              ; preds = %131, %101
  %133 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %134 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %133, i32 0, i32 2
  %135 = load %struct.addrinfo*, %struct.addrinfo** %134, align 8
  store %struct.addrinfo* %135, %struct.addrinfo** %9, align 8
  br label %86

136:                                              ; preds = %86
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.printer*, %struct.printer** %3, align 8
  %141 = getelementptr inbounds %struct.printer, %struct.printer* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %144 = call i32 @freeaddrinfo(%struct.addrinfo* %143)
  %145 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %146 = call i32 @freeaddrinfo(%struct.addrinfo* %145)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %16, align 4
  br label %147

147:                                              ; preds = %142, %74, %56, %41, %31
  %148 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i8*, i8** %2, align 8
  ret i8* %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i64 @getnameinfo(i32, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

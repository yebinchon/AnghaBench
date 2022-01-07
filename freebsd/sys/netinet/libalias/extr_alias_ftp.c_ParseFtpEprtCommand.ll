; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_ftp.c_ParseFtpEprtCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_ftp.c_ParseFtpEprtCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"EPRT \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i8*, i32)* @ParseFtpEprtCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseFtpEprtCommand(%struct.libalias* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 18
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %156

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i32 5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %156

23:                                               ; preds = %18
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i8 124, i8* %9, align 1
  store i32 0, i32* %11, align 4
  store i32 5, i32* %10, align 4
  br label %24

24:                                               ; preds = %140, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %143

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %8, align 1
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %139 [
    i32 0, label %35
    i32 1, label %44
    i32 2, label %53
    i32 3, label %64
    i32 5, label %64
    i32 7, label %64
    i32 9, label %64
    i32 4, label %76
    i32 6, label %76
    i32 8, label %76
    i32 10, label %76
    i32 11, label %104
    i32 12, label %116
  ]

35:                                               ; preds = %28
  %36 = load i8, i8* %8, align 1
  %37 = call i32 @isspace(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %8, align 1
  store i8 %40, i8* %9, align 1
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %35
  br label %139

44:                                               ; preds = %28
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 49
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %52

51:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %156

52:                                               ; preds = %48
  br label %139

53:                                               ; preds = %28
  %54 = load i8, i8* %8, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* %9, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %156

63:                                               ; preds = %59
  br label %139

64:                                               ; preds = %28, %28, %28, %28
  %65 = load i8, i8* %8, align 1
  %66 = call i32 @isdigit(i8 signext %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i8, i8* %8, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %75

74:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %156

75:                                               ; preds = %68
  br label %139

76:                                               ; preds = %28, %28, %28, %28
  %77 = load i8, i8* %8, align 1
  %78 = call i32 @isdigit(i8 signext %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = mul nsw i32 10, %81
  %83 = load i8, i8* %8, align 1
  %84 = sext i8 %83 to i32
  %85 = add nsw i32 %82, %84
  %86 = sub nsw i32 %85, 48
  store i32 %86, i32* %14, align 4
  br label %103

87:                                               ; preds = %76
  %88 = load i8, i8* %8, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 46
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 10
  br i1 %93, label %94, label %101

94:                                               ; preds = %91, %87
  %95 = load i32, i32* %12, align 4
  %96 = shl i32 %95, 8
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %102

101:                                              ; preds = %91
  store i32 0, i32* %4, align 4
  br label %156

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %80
  br label %139

104:                                              ; preds = %28
  %105 = load i8, i8* %8, align 1
  %106 = call i32 @isdigit(i8 signext %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i8, i8* %8, align 1
  %110 = sext i8 %109 to i32
  %111 = sub nsw i32 %110, 48
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %115

114:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %156

115:                                              ; preds = %108
  br label %139

116:                                              ; preds = %28
  %117 = load i8, i8* %8, align 1
  %118 = call i32 @isdigit(i8 signext %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i32, i32* %13, align 4
  %122 = mul nsw i32 10, %121
  %123 = load i8, i8* %8, align 1
  %124 = sext i8 %123 to i32
  %125 = add nsw i32 %122, %124
  %126 = sub nsw i32 %125, 48
  store i32 %126, i32* %13, align 4
  br label %138

127:                                              ; preds = %116
  %128 = load i8, i8* %8, align 1
  %129 = sext i8 %128 to i32
  %130 = load i8, i8* %9, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %137

136:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %156

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137, %120
  br label %139

139:                                              ; preds = %28, %138, %115, %103, %75, %63, %52, %43
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %24

143:                                              ; preds = %24
  %144 = load i32, i32* %11, align 4
  %145 = icmp eq i32 %144, 13
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @htonl(i32 %147)
  %149 = load %struct.libalias*, %struct.libalias** %5, align 8
  %150 = getelementptr inbounds %struct.libalias, %struct.libalias* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.libalias*, %struct.libalias** %5, align 8
  %154 = getelementptr inbounds %struct.libalias, %struct.libalias* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  store i32 1, i32* %4, align 4
  br label %156

155:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %146, %136, %114, %101, %74, %62, %51, %22, %17
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

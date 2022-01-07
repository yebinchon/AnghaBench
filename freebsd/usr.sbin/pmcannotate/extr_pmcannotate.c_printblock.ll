; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcannotate/extr_pmcannotate.c_printblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcannotate/extr_pmcannotate.c_printblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggent = type { float }
%struct.entry = type { i64 }

@LNBUFF = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" %p:\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\09| %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%.2f%%\09| %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.aggent*)* @printblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printblock(i32* %0, %struct.aggent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aggent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.aggent* %1, %struct.aggent** %5, align 8
  %16 = load i32, i32* @LNBUFF, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @ftell(i32* %20)
  store i64 %21, i64* %8, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %45, %2
  %23 = load i32, i32* @LNBUFF, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @fgets(i8* %19, i32 %23, i32* %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

28:                                               ; preds = %22
  %29 = call i64 @isasminline(i8* %19)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %46

32:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  %33 = call i32 @newfunction(i8* %19)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %38, -1
  %40 = load i32, i32* @SEEK_CUR, align 4
  %41 = call i32 @fseek(i32* %37, i32 %39, i32 %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

44:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

45:                                               ; preds = %32
  br label %22

46:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %76, %46
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

51:                                               ; preds = %47
  %52 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

55:                                               ; preds = %51
  %56 = load i8*, i8** %14, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = call %struct.entry* @general_findent(i64 %57)
  store %struct.entry* %58, %struct.entry** %9, align 8
  %59 = load %struct.entry*, %struct.entry** %9, align 8
  %60 = icmp ne %struct.entry* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.entry*, %struct.entry** %9, align 8
  %63 = getelementptr inbounds %struct.entry, %struct.entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %61, %55
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* @LNBUFF, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = call i32* @fgets(i8* %19, i32 %69, i32* %70)
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = call i64 @isasminline(i8* %19)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %73, %68
  %77 = phi i1 [ false, %68 ], [ %75, %73 ]
  br i1 %77, label %47, label %78

78:                                               ; preds = %76
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* %8, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* @SEEK_SET, align 4
  %83 = call i32 @fseek(i32* %79, i32 %81, i32 %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

86:                                               ; preds = %78
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %115, %86
  %88 = load i32, i32* @LNBUFF, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = call i32* @fgets(i8* %19, i32 %88, i32* %89)
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = call i64 @isasminline(i8* %19)
  %94 = icmp eq i64 %93, 0
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi i1 [ false, %87 ], [ %94, %92 ]
  br i1 %96, label %97, label %116

97:                                               ; preds = %95
  %98 = load i64, i64* %10, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100, %97
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %115

105:                                              ; preds = %100
  store i32 1, i32* %11, align 4
  %106 = load i64, i64* %10, align 8
  %107 = sitofp i64 %106 to float
  %108 = fmul float %107, 1.000000e+02
  %109 = load %struct.aggent*, %struct.aggent** %5, align 8
  %110 = getelementptr inbounds %struct.aggent, %struct.aggent* %109, i32 0, i32 0
  %111 = load float, float* %110, align 4
  %112 = fdiv float %108, %111
  %113 = fpext float %112 to double
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), double %113, i8* %19)
  br label %115

115:                                              ; preds = %105, %103
  br label %87

116:                                              ; preds = %95
  br label %117

117:                                              ; preds = %140, %116
  %118 = load i32, i32* @LNBUFF, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = call i32* @fgets(i8* %19, i32 %118, i32* %119)
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

123:                                              ; preds = %117
  %124 = call i64 @isasminline(i8* %19)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %141

127:                                              ; preds = %123
  %128 = call i32 @newfunction(i8* %19)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* %12, align 4
  %134 = mul nsw i32 %133, -1
  %135 = load i32, i32* @SEEK_CUR, align 4
  %136 = call i32 @fseek(i32* %132, i32 %134, i32 %135)
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

139:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

140:                                              ; preds = %127
  br label %117

141:                                              ; preds = %126
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @strlen(i8* %19)
  %144 = mul nsw i32 %143, -1
  %145 = load i32, i32* @SEEK_CUR, align 4
  %146 = call i32 @fseek(i32* %142, i32 %144, i32 %145)
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

149:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

150:                                              ; preds = %149, %148, %139, %138, %122, %85, %54, %50, %44, %43, %27
  %151 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ftell(i32*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @isasminline(i8*) #2

declare dso_local i32 @newfunction(i8*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i8**) #2

declare dso_local %struct.entry* @general_findent(i64) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

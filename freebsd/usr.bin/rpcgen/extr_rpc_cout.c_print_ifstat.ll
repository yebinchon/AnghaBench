; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_print_ifstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_print_ifstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09%s **pp = %s;\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"(char **)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"(char *)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"%s.%s_val, (u_int *) %s.%s_len\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"&%s->%s_val, (u_int *) &%s->%s_len\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32, i8*, i8*, i8*)* @print_ifstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ifstat(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %11, align 4
  switch i32 %17, label %142 [
    i32 129, label %18
    i32 128, label %33
    i32 130, label %72
    i32 131, label %136
  ]

18:                                               ; preds = %7
  store i32 1, i32* %16, align 4
  %19 = load i32, i32* @fout, align 4
  %20 = call i32 (i32, i8*, ...) @f_print(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @fout, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 (i32, i8*, ...) @f_print(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @print_ifopen(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @print_ifarg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* @fout, align 4
  %29 = call i32 (i32, i8*, ...) @f_print(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @print_ifsizeof(i32 0, i8* %30, i8* %31)
  br label %142

33:                                               ; preds = %7
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @streq(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %15, align 8
  br label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @streq(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  br label %43

43:                                               ; preds = %42, %38
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i8*, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @print_ifopen(i32 %48, i8* %49)
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @print_ifarg(i8* %51)
  br label %60

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @print_ifopen(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %56 = call i32 @print_ifarg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %57 = load i32, i32* @fout, align 4
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 (i32, i8*, ...) @f_print(i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %53, %47
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @print_ifarg(i8* %61)
  %63 = load i8*, i8** %15, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @print_ifsizeof(i32 %67, i8* %68, i8* %69)
  br label %71

71:                                               ; preds = %65, %60
  br label %142

72:                                               ; preds = %7
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @streq(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %15, align 8
  br label %83

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @streq(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %15, align 8
  br label %82

82:                                               ; preds = %81, %77
  br label %83

83:                                               ; preds = %82, %76
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @streq(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = load i8*, i8** %15, align 8
  %90 = call i32 @print_ifopen(i32 %88, i8* %89)
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @print_ifarg(i8* %91)
  br label %124

93:                                               ; preds = %83
  %94 = load i8*, i8** %15, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load i8*, i8** %15, align 8
  %99 = call i32 @print_ifopen(i32 %97, i8* %98)
  br label %103

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @print_ifopen(i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %96
  %104 = call i32 @print_ifarg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i8*, i8** %13, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 38
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i32, i32* @fout, align 4
  %111 = load i8*, i8** %13, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 (i32, i8*, ...) @f_print(i32 %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %111, i8* %112, i8* %113, i8* %114)
  br label %123

116:                                              ; preds = %103
  %117 = load i32, i32* @fout, align 4
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = call i32 (i32, i8*, ...) @f_print(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8* %118, i8* %119, i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %116, %109
  br label %124

124:                                              ; preds = %123, %87
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 @print_ifarg(i8* %125)
  %127 = load i8*, i8** %15, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @print_ifsizeof(i32 %131, i8* %132, i8* %133)
  br label %135

135:                                              ; preds = %129, %124
  br label %142

136:                                              ; preds = %7
  %137 = load i32, i32* %8, align 4
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @print_ifopen(i32 %137, i8* %138)
  %140 = load i8*, i8** %13, align 8
  %141 = call i32 @print_ifarg(i8* %140)
  br label %142

142:                                              ; preds = %7, %136, %135, %71, %18
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @print_ifclose(i32 %143, i32 %144)
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @print_ifopen(i32, i8*) #1

declare dso_local i32 @print_ifarg(i8*) #1

declare dso_local i32 @print_ifsizeof(i32, i8*, i8*) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @print_ifclose(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

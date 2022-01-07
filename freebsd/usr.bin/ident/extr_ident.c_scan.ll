; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ident/extr_ident.c_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ident/extr_ident.c_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@LC_ALL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"     %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%s warning: no id keywords in %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sbuf*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 132, i32* %11, align 4
  %14 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %14, %struct.sbuf** %12, align 8
  %15 = load i32, i32* @LC_ALL_MASK, align 4
  %16 = call i32 @newlocale(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %16, i32* %13, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %3
  br label %23

23:                                               ; preds = %130, %64, %52, %41, %34, %22
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @fgetc(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @EOF, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %131

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %130 [
    i32 132, label %30
    i32 133, label %36
    i32 131, label %56
    i32 130, label %77
    i32 129, label %77
    i32 128, label %91
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 36
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 133, i32* %11, align 4
  br label %35

34:                                               ; preds = %30
  br label %23

35:                                               ; preds = %33
  br label %130

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @isalpha_l(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.sbuf*, %struct.sbuf** %12, align 8
  %43 = call i32 @sbuf_clear(%struct.sbuf* %42)
  %44 = load %struct.sbuf*, %struct.sbuf** %12, align 8
  %45 = call i32 @sbuf_putc(%struct.sbuf* %44, i32 36)
  %46 = load %struct.sbuf*, %struct.sbuf** %12, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @sbuf_putc(%struct.sbuf* %46, i32 %47)
  store i32 131, i32* %11, align 4
  br label %23

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 36
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %23

53:                                               ; preds = %49
  store i32 132, i32* %11, align 4
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  br label %130

56:                                               ; preds = %28
  %57 = load %struct.sbuf*, %struct.sbuf** %12, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @sbuf_putc(%struct.sbuf* %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @isalpha_l(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %23

65:                                               ; preds = %56
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 58
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 130, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 36
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 133, i32* %11, align 4
  br label %74

73:                                               ; preds = %69
  store i32 132, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %68
  br label %76

76:                                               ; preds = %75
  br label %130

77:                                               ; preds = %28, %28
  %78 = load %struct.sbuf*, %struct.sbuf** %12, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @sbuf_putc(%struct.sbuf* %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  switch i32 %81, label %89 [
    i32 58, label %82
    i32 32, label %88
  ]

82:                                               ; preds = %77
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 130
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 129, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %87

86:                                               ; preds = %82
  store i32 132, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %85
  br label %90

88:                                               ; preds = %77
  store i32 128, i32* %11, align 4
  br label %90

89:                                               ; preds = %77
  store i32 132, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %88, %87
  br label %130

91:                                               ; preds = %28
  %92 = load %struct.sbuf*, %struct.sbuf** %12, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @sbuf_putc(%struct.sbuf* %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @iscntrl_l(i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 132, i32* %11, align 4
  br label %129

100:                                              ; preds = %91
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 36
  br i1 %102, label %103, label %128

103:                                              ; preds = %100
  %104 = load %struct.sbuf*, %struct.sbuf** %12, align 8
  %105 = call i32 @sbuf_finish(%struct.sbuf* %104)
  %106 = load %struct.sbuf*, %struct.sbuf** %12, align 8
  %107 = call i8* @sbuf_data(%struct.sbuf* %106)
  %108 = load %struct.sbuf*, %struct.sbuf** %12, align 8
  %109 = call i32 @sbuf_len(%struct.sbuf* %108)
  %110 = sub nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 32
  br i1 %116, label %123, label %117

117:                                              ; preds = %103
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %121, 35
  br i1 %122, label %123, label %127

123:                                              ; preds = %120, %103
  %124 = load %struct.sbuf*, %struct.sbuf** %12, align 8
  %125 = call i8* @sbuf_data(%struct.sbuf* %124)
  %126 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %125)
  store i32 1, i32* %9, align 4
  br label %127

127:                                              ; preds = %123, %120, %117
  store i32 132, i32* %11, align 4
  br label %128

128:                                              ; preds = %127, %100
  br label %129

129:                                              ; preds = %128, %99
  br label %130

130:                                              ; preds = %28, %129, %90, %76, %55, %35
  br label %23

131:                                              ; preds = %23
  %132 = load %struct.sbuf*, %struct.sbuf** %12, align 8
  %133 = call i32 @sbuf_delete(%struct.sbuf* %132)
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @freelocale(i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %154, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* @stderr, align 4
  %143 = call i8* (...) @getprogname()
  %144 = load i8*, i8** %6, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i8*, i8** %6, align 8
  br label %149

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i8* [ %147, %146 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %148 ]
  %151 = call i32 @fprintf(i32 %142, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %143, i8* %150)
  br label %152

152:                                              ; preds = %149, %138
  %153 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %153, i32* %4, align 4
  br label %156

154:                                              ; preds = %131
  %155 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @newlocale(i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @isalpha_l(i32, i32) #1

declare dso_local i32 @sbuf_clear(%struct.sbuf*) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i32) #1

declare dso_local i32 @iscntrl_l(i32, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_len(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @freelocale(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

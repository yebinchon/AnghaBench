; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rs/extr_rs.c_getargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rs/extr_rs.c_getargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOARGS = common dso_local global i32 0, align 4
@TRANSPOSE = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@MTRANSPOSE = common dso_local global i32 0, align 4
@ONEISEPONLY = common dso_local global i32 0, align 4
@isep = common dso_local global i8 0, align 1
@ONEOSEPONLY = common dso_local global i32 0, align 4
@osep = common dso_local global i8 0, align 1
@owidth = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"width must be a positive integer\00", align 1
@SKIPPRINT = common dso_local global i32 0, align 4
@skip = common dso_local global i32 0, align 4
@NOTRIMENDCOL = common dso_local global i32 0, align 4
@gutter = common dso_local global i32 0, align 4
@propgutter = common dso_local global i32 0, align 4
@ONEPERLINE = common dso_local global i32 0, align 4
@ONEPERCHAR = common dso_local global i32 0, align 4
@RIGHTADJUST = common dso_local global i32 0, align 4
@NULLPAD = common dso_local global i32 0, align 4
@RECYCLE = common dso_local global i32 0, align 4
@DETAILSHAPE = common dso_local global i32 0, align 4
@SHAPEONLY = common dso_local global i32 0, align 4
@SQUEEZE = common dso_local global i32 0, align 4
@cord = common dso_local global i32 0, align 4
@ICOLBOUNDS = common dso_local global i32 0, align 4
@icbd = common dso_local global i32 0, align 4
@OCOLBOUNDS = common dso_local global i32 0, align 4
@ocbd = common dso_local global i32 0, align 4
@ocols = common dso_local global i8* null, align 8
@orows = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @getargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @NOARGS, align 4
  %10 = load i32, i32* @TRANSPOSE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @flags, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* @flags, align 4
  br label %14

14:                                               ; preds = %8, %2
  br label %15

15:                                               ; preds = %160, %14
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %4, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i1 [ false, %15 ], [ %25, %19 ]
  br i1 %27, label %28, label %161

28:                                               ; preds = %26
  %29 = load i8**, i8*** %4, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %157, %28
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %160

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %154 [
    i32 84, label %40
    i32 116, label %44
    i32 99, label %48
    i32 115, label %52
    i32 67, label %63
    i32 83, label %67
    i32 119, label %78
    i32 75, label %86
    i32 107, label %90
    i32 109, label %97
    i32 103, label %101
    i32 71, label %104
    i32 101, label %107
    i32 69, label %111
    i32 106, label %115
    i32 110, label %119
    i32 121, label %123
    i32 72, label %127
    i32 104, label %131
    i32 122, label %135
    i32 111, label %139
    i32 98, label %142
    i32 66, label %148
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* @MTRANSPOSE, align 4
  %42 = load i32, i32* @flags, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @flags, align 4
  br label %44

44:                                               ; preds = %36, %40
  %45 = load i32, i32* @TRANSPOSE, align 4
  %46 = load i32, i32* @flags, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @flags, align 4
  br label %156

48:                                               ; preds = %36
  %49 = load i32, i32* @ONEISEPONLY, align 4
  %50 = load i32, i32* @flags, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @flags, align 4
  br label %52

52:                                               ; preds = %36, %48
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* @isep, align 1
  br label %62

61:                                               ; preds = %52
  store i8 9, i8* @isep, align 1
  br label %62

62:                                               ; preds = %61, %57
  br label %156

63:                                               ; preds = %36
  %64 = load i32, i32* @ONEOSEPONLY, align 4
  %65 = load i32, i32* @flags, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* @flags, align 4
  br label %67

67:                                               ; preds = %36, %63
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* @osep, align 1
  br label %77

76:                                               ; preds = %67
  store i8 9, i8* @osep, align 1
  br label %77

77:                                               ; preds = %76, %72
  br label %156

78:                                               ; preds = %36
  %79 = load i8*, i8** %5, align 8
  %80 = call i8* @getnum(i32* @owidth, i8* %79, i32 0)
  store i8* %80, i8** %5, align 8
  %81 = load i32, i32* @owidth, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %78
  br label %156

86:                                               ; preds = %36
  %87 = load i32, i32* @SKIPPRINT, align 4
  %88 = load i32, i32* @flags, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* @flags, align 4
  br label %90

90:                                               ; preds = %36, %86
  %91 = load i8*, i8** %5, align 8
  %92 = call i8* @getnum(i32* @skip, i8* %91, i32 0)
  store i8* %92, i8** %5, align 8
  %93 = load i32, i32* @skip, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  store i32 1, i32* @skip, align 4
  br label %96

96:                                               ; preds = %95, %90
  br label %156

97:                                               ; preds = %36
  %98 = load i32, i32* @NOTRIMENDCOL, align 4
  %99 = load i32, i32* @flags, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* @flags, align 4
  br label %156

101:                                              ; preds = %36
  %102 = load i8*, i8** %5, align 8
  %103 = call i8* @getnum(i32* @gutter, i8* %102, i32 0)
  store i8* %103, i8** %5, align 8
  br label %156

104:                                              ; preds = %36
  %105 = load i8*, i8** %5, align 8
  %106 = call i8* @getnum(i32* @propgutter, i8* %105, i32 0)
  store i8* %106, i8** %5, align 8
  br label %156

107:                                              ; preds = %36
  %108 = load i32, i32* @ONEPERLINE, align 4
  %109 = load i32, i32* @flags, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* @flags, align 4
  br label %156

111:                                              ; preds = %36
  %112 = load i32, i32* @ONEPERCHAR, align 4
  %113 = load i32, i32* @flags, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* @flags, align 4
  br label %156

115:                                              ; preds = %36
  %116 = load i32, i32* @RIGHTADJUST, align 4
  %117 = load i32, i32* @flags, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* @flags, align 4
  br label %156

119:                                              ; preds = %36
  %120 = load i32, i32* @NULLPAD, align 4
  %121 = load i32, i32* @flags, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* @flags, align 4
  br label %156

123:                                              ; preds = %36
  %124 = load i32, i32* @RECYCLE, align 4
  %125 = load i32, i32* @flags, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* @flags, align 4
  br label %156

127:                                              ; preds = %36
  %128 = load i32, i32* @DETAILSHAPE, align 4
  %129 = load i32, i32* @flags, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* @flags, align 4
  br label %131

131:                                              ; preds = %36, %127
  %132 = load i32, i32* @SHAPEONLY, align 4
  %133 = load i32, i32* @flags, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* @flags, align 4
  br label %156

135:                                              ; preds = %36
  %136 = load i32, i32* @SQUEEZE, align 4
  %137 = load i32, i32* @flags, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* @flags, align 4
  br label %156

139:                                              ; preds = %36
  %140 = load i8*, i8** %5, align 8
  %141 = call i8* @getlist(i32* @cord, i8* %140)
  store i8* %141, i8** %5, align 8
  br label %156

142:                                              ; preds = %36
  %143 = load i32, i32* @ICOLBOUNDS, align 4
  %144 = load i32, i32* @flags, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* @flags, align 4
  %146 = load i8*, i8** %5, align 8
  %147 = call i8* @getlist(i32* @icbd, i8* %146)
  store i8* %147, i8** %5, align 8
  br label %156

148:                                              ; preds = %36
  %149 = load i32, i32* @OCOLBOUNDS, align 4
  %150 = load i32, i32* @flags, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* @flags, align 4
  %152 = load i8*, i8** %5, align 8
  %153 = call i8* @getlist(i32* @ocbd, i8* %152)
  store i8* %153, i8** %5, align 8
  br label %156

154:                                              ; preds = %36
  %155 = call i32 (...) @usage()
  br label %156

156:                                              ; preds = %154, %148, %142, %139, %135, %131, %123, %119, %115, %111, %107, %104, %101, %97, %96, %85, %77, %62, %44
  br label %157

157:                                              ; preds = %156
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %5, align 8
  br label %32

160:                                              ; preds = %32
  br label %15

161:                                              ; preds = %26
  %162 = load i32, i32* %3, align 4
  switch i32 %162, label %180 [
    i32 2, label %163
    i32 1, label %171
    i32 0, label %179
  ]

163:                                              ; preds = %161
  %164 = load i8**, i8*** %4, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i8* @atoi(i8* %166)
  store i8* %167, i8** @ocols, align 8
  %168 = icmp ult i8* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store i8* null, i8** @ocols, align 8
  br label %170

170:                                              ; preds = %169, %163
  br label %171

171:                                              ; preds = %161, %170
  %172 = load i8**, i8*** %4, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @atoi(i8* %174)
  store i8* %175, i8** @orows, align 8
  %176 = icmp ult i8* %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  store i8* null, i8** @orows, align 8
  br label %178

178:                                              ; preds = %177, %171
  br label %179

179:                                              ; preds = %161, %178
  br label %182

180:                                              ; preds = %161
  %181 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %179
  ret void
}

declare dso_local i8* @getnum(i32*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @getlist(i32*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"aBbcDehlrwVv\00", align 1
@optind = common dso_local global i32 0, align 4
@exitstatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 4, i32* %7, align 4
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %39 [
    i32 97, label %26
    i32 66, label %27
    i32 98, label %28
    i32 99, label %29
    i32 68, label %30
    i32 101, label %31
    i32 104, label %32
    i32 108, label %33
    i32 114, label %34
    i32 119, label %35
    i32 118, label %36
    i32 86, label %37
    i32 120, label %38
  ]

26:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %41

27:                                               ; preds = %24
  store i32 1, i32* %14, align 4
  br label %41

28:                                               ; preds = %24
  store i32 1, i32* %13, align 4
  store i32 1, i32* %7, align 4
  br label %41

29:                                               ; preds = %24
  store i32 1, i32* %15, align 4
  br label %41

30:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  br label %41

31:                                               ; preds = %24
  store i32 1, i32* %16, align 4
  br label %41

32:                                               ; preds = %24
  store i32 2, i32* %7, align 4
  br label %41

33:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  br label %41

34:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %41

35:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %41

36:                                               ; preds = %24
  store i32 1, i32* %17, align 4
  br label %41

37:                                               ; preds = %24
  store i32 1, i32* %18, align 4
  br label %41

38:                                               ; preds = %24
  store i32 8, i32* %7, align 4
  br label %41

39:                                               ; preds = %24
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26
  br label %19

42:                                               ; preds = %19
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* @optind, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = icmp sge i32 %46, %48
  br i1 %49, label %93, label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* @optind, align 4
  %55 = add nsw i32 %54, 3
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %93, label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* @optind, align 4
  %63 = add nsw i32 %62, 2
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %93, label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @optind, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %93, label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, i32* @optind, align 4
  %79 = add nsw i32 %78, 2
  %80 = load i32, i32* %4, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @optind, align 4
  %84 = add nsw i32 %83, 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %82, %74
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 8
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90, %82, %77, %69, %61, %53, %45
  %94 = call i32 (...) @usage()
  br label %95

95:                                               ; preds = %93, %90, %87
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %95
  %99 = load i32, i32* @optind, align 4
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* @optind, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  br label %110

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %103
  %111 = phi i8* [ %108, %103 ], [ null, %109 ]
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @list_devs(i8* %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  br label %221

119:                                              ; preds = %95
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* @optind, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @chkattached(i8* %127)
  br label %220

129:                                              ; preds = %119
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* @optind, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** %5, align 8
  %139 = load i32, i32* @optind, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %138, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @readit(i8* %137, i8* %143, i32 %144)
  br label %219

146:                                              ; preds = %129
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %146
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* @optind, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* @optind, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* @optind, align 4
  %163 = add nsw i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %161, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @writeit(i8* %154, i8* %160, i8* %166, i32 %167)
  br label %218

169:                                              ; preds = %146
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %215

172:                                              ; preds = %169
  %173 = load i8**, i8*** %5, align 8
  %174 = load i32, i32* @optind, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load i8**, i8*** %5, align 8
  %179 = load i32, i32* @optind, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %178, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* @optind, align 4
  %185 = add nsw i32 %184, 2
  %186 = load i32, i32* %4, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %172
  %189 = load i8**, i8*** %5, align 8
  %190 = load i32, i32* @optind, align 4
  %191 = add nsw i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %189, i64 %192
  %194 = load i8*, i8** %193, align 8
  br label %196

195:                                              ; preds = %172
  br label %196

196:                                              ; preds = %195, %188
  %197 = phi i8* [ %194, %188 ], [ null, %195 ]
  %198 = load i32, i32* @optind, align 4
  %199 = add nsw i32 %198, 3
  %200 = load i32, i32* %4, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %196
  %203 = load i8**, i8*** %5, align 8
  %204 = load i32, i32* @optind, align 4
  %205 = add nsw i32 %204, 3
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %203, i64 %206
  %208 = load i8*, i8** %207, align 8
  br label %210

209:                                              ; preds = %196
  br label %210

210:                                              ; preds = %209, %202
  %211 = phi i8* [ %208, %202 ], [ null, %209 ]
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %17, align 4
  %214 = call i32 @dump_bar(i8* %177, i8* %183, i8* %197, i8* %211, i32 %212, i32 %213)
  br label %217

215:                                              ; preds = %169
  %216 = call i32 (...) @usage()
  br label %217

217:                                              ; preds = %215, %210
  br label %218

218:                                              ; preds = %217, %149
  br label %219

219:                                              ; preds = %218, %132
  br label %220

220:                                              ; preds = %219, %122
  br label %221

221:                                              ; preds = %220, %110
  %222 = load i32, i32* @exitstatus, align 4
  ret i32 %222
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @list_devs(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @chkattached(i8*) #1

declare dso_local i32 @readit(i8*, i8*, i32) #1

declare dso_local i32 @writeit(i8*, i8*, i8*, i32) #1

declare dso_local i32 @dump_bar(i8*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

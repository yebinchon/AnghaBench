; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/repquota/extr_repquota.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/repquota/extr_repquota.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstab = type { i32, i32, i32 }
%struct.passwd = type { i32, i64 }
%struct.group = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"aghnuv\00", align 1
@aflag = common dso_local global i64 0, align 8
@hflag = common dso_local global i32 0, align 4
@nflag = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@GRPQUOTA = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s not found in fstab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.fstab*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %43, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %9, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %41 [
    i32 97, label %23
    i32 103, label %26
    i32 104, label %29
    i32 110, label %32
    i32 117, label %35
    i32 118, label %38
  ]

23:                                               ; preds = %21
  %24 = load i64, i64* @aflag, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @aflag, align 8
  br label %43

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %43

29:                                               ; preds = %21
  %30 = load i32, i32* @hflag, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @hflag, align 4
  br label %43

32:                                               ; preds = %21
  %33 = load i32, i32* @nflag, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @nflag, align 4
  br label %43

35:                                               ; preds = %21
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %43

38:                                               ; preds = %21
  %39 = load i32, i32* @vflag, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @vflag, align 4
  br label %43

41:                                               ; preds = %21
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %38, %35, %32, %29, %26, %23
  br label %16

44:                                               ; preds = %16
  %45 = load i64, i64* @optind, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i64, i64* @optind, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 %50
  store i8** %52, i8*** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load i64, i64* @aflag, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %55, %44
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @aflag, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %63, %60
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %75
  %79 = load i32, i32* @nflag, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %78
  %82 = call i32 (...) @setgrent()
  br label %83

83:                                               ; preds = %86, %81
  %84 = call %struct.group* (...) @getgrent()
  store %struct.group* %84, %struct.group** %8, align 8
  %85 = icmp ne %struct.group* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.group*, %struct.group** %8, align 8
  %88 = getelementptr inbounds %struct.group, %struct.group* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @GRPQUOTA, align 4
  %92 = load %struct.group*, %struct.group** %8, align 8
  %93 = getelementptr inbounds %struct.group, %struct.group* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @addid(i32 %90, i32 %91, i32 %94)
  br label %83

96:                                               ; preds = %83
  %97 = call i32 (...) @endgrent()
  br label %98

98:                                               ; preds = %96, %78, %75
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %98
  %102 = load i32, i32* @nflag, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %101
  %105 = call i32 (...) @setpwent()
  br label %106

106:                                              ; preds = %109, %104
  %107 = call %struct.passwd* (...) @getpwent()
  store %struct.passwd* %107, %struct.passwd** %7, align 8
  %108 = icmp ne %struct.passwd* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load %struct.passwd*, %struct.passwd** %7, align 8
  %111 = getelementptr inbounds %struct.passwd, %struct.passwd* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* @USRQUOTA, align 4
  %115 = load %struct.passwd*, %struct.passwd** %7, align 8
  %116 = getelementptr inbounds %struct.passwd, %struct.passwd* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @addid(i32 %113, i32 %114, i32 %117)
  br label %106

119:                                              ; preds = %106
  %120 = call i32 (...) @endpwent()
  br label %121

121:                                              ; preds = %119, %101, %98
  %122 = call i32 (...) @setfsent()
  br label %123

123:                                              ; preds = %204, %158, %132, %121
  %124 = call %struct.fstab* (...) @getfsent()
  store %struct.fstab* %124, %struct.fstab** %6, align 8
  %125 = icmp ne %struct.fstab* %124, null
  br i1 %125, label %126, label %205

126:                                              ; preds = %123
  %127 = load %struct.fstab*, %struct.fstab** %6, align 8
  %128 = getelementptr inbounds %struct.fstab, %struct.fstab* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @strcmp(i32 %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %123

133:                                              ; preds = %126
  %134 = load i64, i64* @aflag, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load %struct.fstab*, %struct.fstab** %6, align 8
  %141 = load i32, i32* @GRPQUOTA, align 4
  %142 = call i64 @repquota(%struct.fstab* %140, i32 %141)
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %139, %136
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load %struct.fstab*, %struct.fstab** %6, align 8
  %152 = load i32, i32* @USRQUOTA, align 4
  %153 = call i64 @repquota(%struct.fstab* %151, i32 %152)
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %150, %147
  br label %123

159:                                              ; preds = %133
  %160 = load %struct.fstab*, %struct.fstab** %6, align 8
  %161 = getelementptr inbounds %struct.fstab, %struct.fstab* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i64 @oneof(i32 %162, i8** %163, i32 %164)
  store i64 %165, i64* %14, align 8
  %166 = icmp sge i64 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %159
  %168 = load %struct.fstab*, %struct.fstab** %6, align 8
  %169 = getelementptr inbounds %struct.fstab, %struct.fstab* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %4, align 4
  %173 = call i64 @oneof(i32 %170, i8** %171, i32 %172)
  store i64 %173, i64* %14, align 8
  %174 = icmp sge i64 %173, 0
  br i1 %174, label %175, label %204

175:                                              ; preds = %167, %159
  %176 = load i64, i64* %14, align 8
  %177 = trunc i64 %176 to i32
  %178 = shl i32 1, %177
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* %15, align 8
  %181 = or i64 %180, %179
  store i64 %181, i64* %15, align 8
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %175
  %185 = load %struct.fstab*, %struct.fstab** %6, align 8
  %186 = load i32, i32* @GRPQUOTA, align 4
  %187 = call i64 @repquota(%struct.fstab* %185, i32 %186)
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %12, align 4
  br label %192

192:                                              ; preds = %184, %175
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = load %struct.fstab*, %struct.fstab** %6, align 8
  %197 = load i32, i32* @USRQUOTA, align 4
  %198 = call i64 @repquota(%struct.fstab* %196, i32 %197)
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %12, align 4
  br label %203

203:                                              ; preds = %195, %192
  br label %204

204:                                              ; preds = %203, %167
  br label %123

205:                                              ; preds = %123
  %206 = call i32 (...) @endfsent()
  store i64 0, i64* %13, align 8
  br label %207

207:                                              ; preds = %227, %205
  %208 = load i64, i64* %13, align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = icmp slt i64 %208, %210
  br i1 %211, label %212, label %230

212:                                              ; preds = %207
  %213 = load i64, i64* %15, align 8
  %214 = load i64, i64* %13, align 8
  %215 = trunc i64 %214 to i32
  %216 = shl i32 1, %215
  %217 = sext i32 %216 to i64
  %218 = and i64 %213, %217
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %212
  %221 = load i8**, i8*** %5, align 8
  %222 = load i64, i64* %13, align 8
  %223 = getelementptr inbounds i8*, i8** %221, i64 %222
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %224)
  br label %226

226:                                              ; preds = %220, %212
  br label %227

227:                                              ; preds = %226
  %228 = load i64, i64* %13, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %13, align 8
  br label %207

230:                                              ; preds = %207
  %231 = load i32, i32* %12, align 4
  %232 = call i32 @exit(i32 %231) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @setgrent(...) #1

declare dso_local %struct.group* @getgrent(...) #1

declare dso_local i32 @addid(i32, i32, i32) #1

declare dso_local i32 @endgrent(...) #1

declare dso_local i32 @setpwent(...) #1

declare dso_local %struct.passwd* @getpwent(...) #1

declare dso_local i32 @endpwent(...) #1

declare dso_local i32 @setfsent(...) #1

declare dso_local %struct.fstab* @getfsent(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @repquota(%struct.fstab*, i32) #1

declare dso_local i64 @oneof(i32, i8**, i32) #1

declare dso_local i32 @endfsent(...) #1

declare dso_local i32 @warnx(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

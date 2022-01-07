; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_rpc.umntall.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_rpc.umntall.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtablist = type { i8*, i64, i8*, %struct.mtablist* }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"h:kp:ve:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"no mounttab entries (%s does not exist)\00", align 1
@PATH_MOUNTTAB = common dso_local global i32 0, align 4
@mtabhead = common dso_local global %struct.mtablist* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"remove expired entry %s:%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"skip entry %s:%s\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"umount RPC for %s:%s succeeded\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"umntall RPC for %s succeeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.mtablist*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %10, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* @verbose, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %33 [
    i32 104, label %22
    i32 101, label %24
    i32 107, label %27
    i32 112, label %28
    i32 118, label %30
    i32 63, label %31
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** %12, align 8
  br label %34

24:                                               ; preds = %20
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i64 @atoi(i8* %25)
  store i64 %26, i64* %10, align 8
  br label %34

27:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %34

28:                                               ; preds = %20
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %13, align 8
  br label %34

30:                                               ; preds = %20
  store i32 1, i32* @verbose, align 4
  br label %34

31:                                               ; preds = %20
  %32 = call i32 (...) @usage()
  br label %33

33:                                               ; preds = %20, %31
  br label %34

34:                                               ; preds = %33, %30, %28, %27, %24, %22
  br label %15

35:                                               ; preds = %15
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i64 86400, i64* %10, align 8
  br label %47

47:                                               ; preds = %46, %35
  %48 = call i32 @time(i64* %11)
  %49 = call i32 (...) @read_mtab()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @verbose, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* @PATH_MOUNTTAB, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %54, %51
  store %struct.mtablist* null, %struct.mtablist** @mtabhead, align 8
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i8*, i8** %12, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %162

63:                                               ; preds = %60
  %64 = load i8*, i8** %13, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %162

66:                                               ; preds = %63
  %67 = load %struct.mtablist*, %struct.mtablist** @mtabhead, align 8
  store %struct.mtablist* %67, %struct.mtablist** %14, align 8
  br label %68

68:                                               ; preds = %157, %66
  %69 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %70 = icmp ne %struct.mtablist* %69, null
  br i1 %70, label %71, label %161

71:                                               ; preds = %68
  %72 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %73 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %157

79:                                               ; preds = %71
  %80 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %81 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64, i64* %11, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %79
  %88 = load i32, i32* @verbose, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %92 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %95 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %93, i8* %96)
  br label %98

98:                                               ; preds = %90, %87
  %99 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %100 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @bzero(i8* %101, i32 8)
  br label %157

103:                                              ; preds = %79
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %103
  %107 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %108 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %111 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @is_mounted(i8* %109, i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %106
  %116 = load i32, i32* @verbose, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %120 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %123 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %121, i8* %124)
  br label %126

126:                                              ; preds = %118, %115
  br label %157

127:                                              ; preds = %106, %103
  %128 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %129 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %132 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @do_umount(i8* %130, i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %127
  %137 = load i32, i32* @verbose, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %141 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %144 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %142, i8* %145)
  br label %147

147:                                              ; preds = %139, %136
  %148 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %149 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %152 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* @verbose, align 4
  %155 = call i32 @clean_mtab(i8* %150, i8* %153, i32 %154)
  br label %156

156:                                              ; preds = %147, %127
  br label %157

157:                                              ; preds = %156, %126, %98, %78
  %158 = load %struct.mtablist*, %struct.mtablist** %14, align 8
  %159 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %158, i32 0, i32 3
  %160 = load %struct.mtablist*, %struct.mtablist** %159, align 8
  store %struct.mtablist* %160, %struct.mtablist** %14, align 8
  br label %68

161:                                              ; preds = %68
  store i32 1, i32* %8, align 4
  br label %234

162:                                              ; preds = %63, %60
  %163 = load i8*, i8** %12, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i8*, i8** %13, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 (...) @usage()
  br label %170

170:                                              ; preds = %168, %165, %162
  %171 = load i8*, i8** %13, align 8
  %172 = icmp eq i8* %171, null
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = load i8*, i8** %12, align 8
  %175 = call i32 @do_umntall(i8* %174)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* @verbose, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i8*, i8** %12, align 8
  %183 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %181, %178, %173
  br label %225

185:                                              ; preds = %170
  %186 = load i8*, i8** %13, align 8
  %187 = call i32 @strlen(i8* %186)
  store i32 %187, i32* %9, align 4
  br label %188

188:                                              ; preds = %208, %185
  %189 = load i32, i32* %9, align 4
  %190 = icmp sgt i32 %189, 1
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load i8*, i8** %13, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %192, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 47
  br label %200

200:                                              ; preds = %191, %188
  %201 = phi i1 [ false, %188 ], [ %199, %191 ]
  br i1 %201, label %202, label %211

202:                                              ; preds = %200
  %203 = load i8*, i8** %13, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8 0, i8* %207, align 1
  br label %208

208:                                              ; preds = %202
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %9, align 4
  br label %188

211:                                              ; preds = %200
  %212 = load i8*, i8** %12, align 8
  %213 = load i8*, i8** %13, align 8
  %214 = call i32 @do_umount(i8* %212, i8* %213)
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* @verbose, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load i32, i32* %8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load i8*, i8** %12, align 8
  %222 = load i8*, i8** %13, align 8
  %223 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %221, i8* %222)
  br label %224

224:                                              ; preds = %220, %217, %211
  br label %225

225:                                              ; preds = %224, %184
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i8*, i8** %12, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = load i32, i32* @verbose, align 4
  %232 = call i32 @clean_mtab(i8* %229, i8* %230, i32 %231)
  br label %233

233:                                              ; preds = %228, %225
  br label %234

234:                                              ; preds = %233, %161
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, i32* @verbose, align 4
  %239 = call i32 @write_mtab(i32 %238)
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %237, %234
  %241 = call i32 (...) @free_mtab()
  %242 = load i32, i32* %8, align 4
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 0, i32 1
  %246 = call i32 @exit(i32 %245) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @read_mtab(...) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @is_mounted(i8*, i8*) #1

declare dso_local i32 @do_umount(i8*, i8*) #1

declare dso_local i32 @clean_mtab(i8*, i8*, i32) #1

declare dso_local i32 @do_umntall(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @write_mtab(i32) #1

declare dso_local i32 @free_mtab(...) #1

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

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_pw_group_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_pw_group_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userconf = type { i32 }
%struct.group = type { i8*, i64, i32* }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@GID_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"C:qn:d:g:l:h:H:M:m:NPY\00", align 1
@optarg = common dso_local global i8* null, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"'-h' and '-H' are mutually exclusive options\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"-H expects a file descriptor\00", align 1
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EX_IOERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"group '%s' not available (NIS?)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"group update\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"group disappeared during update\00", align 1
@M_UPDATE = common dso_local global i32 0, align 4
@W_GROUP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"%s(%ju)\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"NIS maps updated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pw_group_mod(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.userconf*, align 8
  %9 = alloca %struct.group*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.group* null, %struct.group** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i64 -1, i64* %16, align 8
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strspn(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @GID_MAX, align 4
  %38 = call i64 @pw_checkid(i8* %36, i32 %37)
  store i64 %38, i64* %16, align 8
  br label %41

39:                                               ; preds = %27
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %15, align 8
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41, %3
  br label %43

43:                                               ; preds = %94, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i8**, i8*** %6, align 8
  %46 = call i32 @getopt(i32 %44, i8** %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %17, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %95

48:                                               ; preds = %43
  %49 = load i32, i32* %17, align 4
  switch i32 %49, label %94 [
    i32 67, label %50
    i32 113, label %52
    i32 110, label %53
    i32 103, label %55
    i32 100, label %59
    i32 108, label %61
    i32 72, label %63
    i32 104, label %78
    i32 77, label %87
    i32 109, label %89
    i32 78, label %91
    i32 80, label %92
    i32 89, label %93
  ]

50:                                               ; preds = %48
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** %10, align 8
  br label %94

52:                                               ; preds = %48
  store i32 1, i32* %20, align 4
  br label %94

53:                                               ; preds = %48
  %54 = load i8*, i8** @optarg, align 8
  store i8* %54, i8** %15, align 8
  br label %94

55:                                               ; preds = %48
  %56 = load i8*, i8** @optarg, align 8
  %57 = load i32, i32* @GID_MAX, align 4
  %58 = call i64 @pw_checkid(i8* %56, i32 %57)
  store i64 %58, i64* %16, align 8
  br label %94

59:                                               ; preds = %48
  %60 = load i8*, i8** @optarg, align 8
  store i8* %60, i8** %11, align 8
  br label %94

61:                                               ; preds = %48
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** %14, align 8
  br label %94

63:                                               ; preds = %48
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EX_USAGE, align 4
  %68 = call i32 (i32, i8*, ...) @errx(i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i8*, i8** @optarg, align 8
  %71 = call i32 @pw_checkfd(i8* %70)
  store i32 %71, i32* %19, align 4
  store i32 1, i32* %24, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp eq i32 %72, 45
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EX_USAGE, align 4
  %76 = call i32 (i32, i8*, ...) @errx(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %69
  br label %94

78:                                               ; preds = %48
  %79 = load i32, i32* %19, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @EX_USAGE, align 4
  %83 = call i32 (i32, i8*, ...) @errx(i32 %82, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** @optarg, align 8
  %86 = call i32 @pw_checkfd(i8* %85)
  store i32 %86, i32* %19, align 4
  br label %94

87:                                               ; preds = %48
  %88 = load i8*, i8** @optarg, align 8
  store i8* %88, i8** %12, align 8
  br label %94

89:                                               ; preds = %48
  %90 = load i8*, i8** @optarg, align 8
  store i8* %90, i8** %13, align 8
  br label %94

91:                                               ; preds = %48
  store i32 1, i32* %22, align 4
  br label %94

92:                                               ; preds = %48
  store i32 1, i32* %21, align 4
  br label %94

93:                                               ; preds = %48
  store i32 1, i32* %23, align 4
  br label %94

94:                                               ; preds = %48, %93, %92, %91, %89, %87, %84, %77, %61, %59, %55, %53, %52, %50
  br label %43

95:                                               ; preds = %43
  %96 = load i32, i32* %20, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @_PATH_DEVNULL, align 4
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 @freopen(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i8*, i8** %10, align 8
  %104 = call %struct.userconf* @get_userconfig(i8* %103)
  store %struct.userconf* %104, %struct.userconf** %8, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = load i64, i64* %16, align 8
  %107 = call %struct.group* @getgroup(i8* %105, i64 %106, i32 1)
  store %struct.group* %107, %struct.group** %9, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load %struct.group*, %struct.group** %9, align 8
  %112 = getelementptr inbounds %struct.group, %struct.group* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %15, align 8
  br label %114

114:                                              ; preds = %110, %102
  %115 = load i64, i64* %16, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i64, i64* %16, align 8
  %119 = load %struct.group*, %struct.group** %9, align 8
  %120 = getelementptr inbounds %struct.group, %struct.group* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i8*, i8** %14, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i8*, i8** %14, align 8
  %126 = call i8* @pw_checkname(i8* %125, i32 0)
  %127 = load %struct.group*, %struct.group** %9, align 8
  %128 = getelementptr inbounds %struct.group, %struct.group* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %124, %121
  %130 = load %struct.group*, %struct.group** %9, align 8
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %24, align 4
  %133 = call i32 @grp_set_passwd(%struct.group* %130, i32 1, i32 %131, i32 %132)
  %134 = load i8*, i8** %12, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load %struct.group*, %struct.group** %9, align 8
  %138 = getelementptr inbounds %struct.group, %struct.group* %137, i32 0, i32 2
  store i32* null, i32** %138, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @grp_add_members(%struct.group** %9, i8* %139)
  br label %156

141:                                              ; preds = %129
  %142 = load i8*, i8** %11, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.group*, %struct.group** %9, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @delete_members(%struct.group* %145, i8* %146)
  br label %155

148:                                              ; preds = %141
  %149 = load i8*, i8** %13, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 @grp_add_members(%struct.group** %9, i8* %152)
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %144
  br label %156

156:                                              ; preds = %155, %136
  %157 = load i32, i32* %22, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load %struct.group*, %struct.group** %9, align 8
  %161 = load i32, i32* %21, align 4
  %162 = call i32 @print_group(%struct.group* %160, i32 %161)
  %163 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %163, i32* %4, align 4
  br label %218

164:                                              ; preds = %156
  %165 = load i8*, i8** %15, align 8
  %166 = load %struct.group*, %struct.group** %9, align 8
  %167 = call i32 @chggrent(i8* %165, %struct.group* %166)
  store i32 %167, i32* %18, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %164
  %170 = load i32, i32* %18, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load i32, i32* @EX_IOERR, align 4
  %174 = load %struct.group*, %struct.group** %9, align 8
  %175 = getelementptr inbounds %struct.group, %struct.group* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i32, i8*, ...) @errx(i32 %173, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %176)
  br label %181

178:                                              ; preds = %169
  %179 = load i32, i32* @EX_IOERR, align 4
  %180 = call i32 @err(i32 %179, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %172
  br label %182

182:                                              ; preds = %181, %164
  %183 = load i8*, i8** %14, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i8*, i8** %14, align 8
  store i8* %186, i8** %15, align 8
  br label %187

187:                                              ; preds = %185, %182
  %188 = load i8*, i8** %15, align 8
  %189 = call %struct.group* @GETGRNAM(i8* %188)
  store %struct.group* %189, %struct.group** %9, align 8
  %190 = icmp eq %struct.group* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load i32, i32* @EX_SOFTWARE, align 4
  %193 = call i32 (i32, i8*, ...) @errx(i32 %192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %187
  %195 = load %struct.userconf*, %struct.userconf** %8, align 8
  %196 = load i32, i32* @M_UPDATE, align 4
  %197 = load i32, i32* @W_GROUP, align 4
  %198 = load %struct.group*, %struct.group** %9, align 8
  %199 = getelementptr inbounds %struct.group, %struct.group* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.group*, %struct.group** %9, align 8
  %202 = getelementptr inbounds %struct.group, %struct.group* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 (%struct.userconf*, i32, i32, i8*, ...) @pw_log(%struct.userconf* %195, i32 %196, i32 %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %200, i32 %204)
  %206 = load i32, i32* %23, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %194
  %209 = call i64 (...) @nis_update()
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load %struct.userconf*, %struct.userconf** %8, align 8
  %213 = load i32, i32* @M_UPDATE, align 4
  %214 = load i32, i32* @W_GROUP, align 4
  %215 = call i32 (%struct.userconf*, i32, i32, i8*, ...) @pw_log(%struct.userconf* %212, i32 %213, i32 %214, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %216

216:                                              ; preds = %211, %208, %194
  %217 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %216, %159
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i64 @pw_checkid(i8*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @pw_checkfd(i8*) #1

declare dso_local i32 @freopen(i32, i8*, i32) #1

declare dso_local %struct.userconf* @get_userconfig(i8*) #1

declare dso_local %struct.group* @getgroup(i8*, i64, i32) #1

declare dso_local i8* @pw_checkname(i8*, i32) #1

declare dso_local i32 @grp_set_passwd(%struct.group*, i32, i32, i32) #1

declare dso_local i32 @grp_add_members(%struct.group**, i8*) #1

declare dso_local i32 @delete_members(%struct.group*, i8*) #1

declare dso_local i32 @print_group(%struct.group*, i32) #1

declare dso_local i32 @chggrent(i8*, %struct.group*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.group* @GETGRNAM(i8*) #1

declare dso_local i32 @pw_log(%struct.userconf*, i32, i32, i8*, ...) #1

declare dso_local i64 @nis_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

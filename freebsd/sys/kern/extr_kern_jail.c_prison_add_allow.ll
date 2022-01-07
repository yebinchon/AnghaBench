; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_add_allow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_add_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.bool_flags = type { i32, i8*, i8* }
%struct.sysctl_oid = type { i32 }

@M_PRISON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"allow.%s.%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"allow.%s.no%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"allow.%s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"allow.no%s\00", align 1
@prison0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@pr_flag_allow = common dso_local global %struct.bool_flags* null, align 8
@PR_ALLOW_ALL_STATIC = common dso_local global i32 0, align 4
@sysctl___security_jail_param_allow = common dso_local global %struct.sysctl_oid zeroinitializer, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@sysctl_jail_param = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"%s_%s_allowed\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s_allowed\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%s (deprecated)\00", align 1
@sysctl___security_jail = common dso_local global %struct.sysctl_oid zeroinitializer, align 4
@sysctl_jail_default_allow = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"I\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prison_add_allow(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bool_flags*, align 8
  %11 = alloca %struct.sysctl_oid*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load i32, i32* @M_PRISON, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 (i8**, i32, i8*, i8*, ...) @asprintf(i8** %12, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @M_PRISON, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 (i8**, i32, i8*, i8*, ...) @asprintf(i8** %13, i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %41, label %45

31:                                               ; preds = %4
  %32 = load i32, i32* @M_PRISON, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 (i8**, i32, i8*, i8*, ...) @asprintf(i8** %12, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @M_PRISON, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 (i8**, i32, i8*, i8*, ...) @asprintf(i8** %13, i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %31, %25, %19
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* @M_PRISON, align 4
  %44 = call i32 @free(i8* %42, i32 %43)
  store i32 0, i32* %5, align 4
  br label %203

45:                                               ; preds = %36, %25
  %46 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 1))
  %47 = load %struct.bool_flags*, %struct.bool_flags** @pr_flag_allow, align 8
  store %struct.bool_flags* %47, %struct.bool_flags** %10, align 8
  br label %48

48:                                               ; preds = %75, %45
  %49 = load %struct.bool_flags*, %struct.bool_flags** %10, align 8
  %50 = load %struct.bool_flags*, %struct.bool_flags** @pr_flag_allow, align 8
  %51 = load %struct.bool_flags*, %struct.bool_flags** @pr_flag_allow, align 8
  %52 = call i32 @nitems(%struct.bool_flags* %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.bool_flags, %struct.bool_flags* %50, i64 %53
  %55 = icmp ult %struct.bool_flags* %49, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.bool_flags*, %struct.bool_flags** %10, align 8
  %58 = getelementptr inbounds %struct.bool_flags, %struct.bool_flags* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %56, %48
  %62 = phi i1 [ false, %48 ], [ %60, %56 ]
  br i1 %62, label %63, label %78

63:                                               ; preds = %61
  %64 = load %struct.bool_flags*, %struct.bool_flags** %10, align 8
  %65 = getelementptr inbounds %struct.bool_flags, %struct.bool_flags* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i64 @strcmp(i8* %66, i8* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.bool_flags*, %struct.bool_flags** %10, align 8
  %72 = getelementptr inbounds %struct.bool_flags, %struct.bool_flags* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %16, align 4
  br label %194

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.bool_flags*, %struct.bool_flags** %10, align 8
  %77 = getelementptr inbounds %struct.bool_flags, %struct.bool_flags* %76, i32 1
  store %struct.bool_flags* %77, %struct.bool_flags** %10, align 8
  br label %48

78:                                               ; preds = %61
  store i32 1, i32* %16, align 4
  br label %79

79:                                               ; preds = %96, %78
  %80 = load i32, i32* %16, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %194

83:                                               ; preds = %79
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @PR_ALLOW_ALL_STATIC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %96

89:                                               ; preds = %83
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 4
  %91 = load i32, i32* %16, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %99

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %88
  %97 = load i32, i32* %16, align 4
  %98 = shl i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %79

99:                                               ; preds = %94
  %100 = load %struct.bool_flags*, %struct.bool_flags** @pr_flag_allow, align 8
  store %struct.bool_flags* %100, %struct.bool_flags** %10, align 8
  br label %101

101:                                              ; preds = %116, %99
  %102 = load %struct.bool_flags*, %struct.bool_flags** %10, align 8
  %103 = getelementptr inbounds %struct.bool_flags, %struct.bool_flags* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.bool_flags*, %struct.bool_flags** %10, align 8
  %108 = load %struct.bool_flags*, %struct.bool_flags** @pr_flag_allow, align 8
  %109 = load %struct.bool_flags*, %struct.bool_flags** @pr_flag_allow, align 8
  %110 = call i32 @nitems(%struct.bool_flags* %109)
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.bool_flags, %struct.bool_flags* %108, i64 %111
  %113 = icmp eq %struct.bool_flags* %107, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 0, i32* %16, align 4
  br label %194

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.bool_flags*, %struct.bool_flags** %10, align 8
  %118 = getelementptr inbounds %struct.bool_flags, %struct.bool_flags* %117, i32 1
  store %struct.bool_flags* %118, %struct.bool_flags** %10, align 8
  br label %101

119:                                              ; preds = %101
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 4
  %123 = load i8*, i8** %12, align 8
  %124 = load %struct.bool_flags*, %struct.bool_flags** %10, align 8
  %125 = getelementptr inbounds %struct.bool_flags, %struct.bool_flags* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load %struct.bool_flags*, %struct.bool_flags** %10, align 8
  %128 = getelementptr inbounds %struct.bool_flags, %struct.bool_flags* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.bool_flags*, %struct.bool_flags** %10, align 8
  %131 = getelementptr inbounds %struct.bool_flags, %struct.bool_flags* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 1))
  %133 = load i8*, i8** %6, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %119
  %136 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* @sysctl___security_jail_param_allow)
  %137 = load i32, i32* @OID_AUTO, align 4
  %138 = load i8*, i8** %6, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* null, i32 %136, i32 %137, i8* %138, i32 0, i32 0, i8* %139)
  br label %142

141:                                              ; preds = %119
  br label %142

142:                                              ; preds = %141, %135
  %143 = phi %struct.sysctl_oid* [ %140, %135 ], [ @sysctl___security_jail_param_allow, %141 ]
  store %struct.sysctl_oid* %143, %struct.sysctl_oid** %11, align 8
  %144 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %145 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %144)
  %146 = load i32, i32* @OID_AUTO, align 4
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* @CTLTYPE_INT, align 4
  %149 = load i32, i32* @CTLFLAG_RW, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @sysctl_jail_param, align 4
  %154 = load i8*, i8** %9, align 8
  %155 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %145, i32 %146, i8* %147, i32 %152, i32* null, i32 0, i32 %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %154)
  %156 = load i8*, i8** %6, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %142
  %159 = load i32, i32* @M_TEMP, align 4
  %160 = load i8*, i8** %6, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = call i64 (i8**, i32, i8*, i8*, ...) @asprintf(i8** %14, i32 %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %160, i8* %161)
  br label %167

163:                                              ; preds = %142
  %164 = load i32, i32* @M_TEMP, align 4
  %165 = load i8*, i8** %7, align 8
  %166 = call i64 (i8**, i32, i8*, i8*, ...) @asprintf(i8** %14, i32 %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %163, %158
  %168 = phi i64 [ %162, %158 ], [ %166, %163 ]
  %169 = icmp sge i64 %168, 0
  br i1 %169, label %170, label %192

170:                                              ; preds = %167
  %171 = load i32, i32* @M_TEMP, align 4
  %172 = load i8*, i8** %9, align 8
  %173 = call i64 (i8**, i32, i8*, i8*, ...) @asprintf(i8** %15, i32 %171, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %172)
  %174 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* @sysctl___security_jail)
  %175 = load i32, i32* @OID_AUTO, align 4
  %176 = load i8*, i8** %14, align 8
  %177 = load i32, i32* @CTLTYPE_INT, align 4
  %178 = load i32, i32* @CTLFLAG_RW, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* @sysctl_jail_default_allow, align 4
  %184 = load i8*, i8** %15, align 8
  %185 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %174, i32 %175, i8* %176, i32 %181, i32* null, i32 %182, i32 %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* %184)
  %186 = load i8*, i8** %15, align 8
  %187 = load i32, i32* @M_TEMP, align 4
  %188 = call i32 @free(i8* %186, i32 %187)
  %189 = load i8*, i8** %14, align 8
  %190 = load i32, i32* @M_TEMP, align 4
  %191 = call i32 @free(i8* %189, i32 %190)
  br label %192

192:                                              ; preds = %170, %167
  %193 = load i32, i32* %16, align 4
  store i32 %193, i32* %5, align 4
  br label %203

194:                                              ; preds = %114, %82, %70
  %195 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 1))
  %196 = load i8*, i8** %12, align 8
  %197 = load i32, i32* @M_PRISON, align 4
  %198 = call i32 @free(i8* %196, i32 %197)
  %199 = load i8*, i8** %13, align 8
  %200 = load i32, i32* @M_PRISON, align 4
  %201 = call i32 @free(i8* %199, i32 %200)
  %202 = load i32, i32* %16, align 4
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %194, %192, %41
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i64 @asprintf(i8**, i32, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @nitems(%struct.bool_flags*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

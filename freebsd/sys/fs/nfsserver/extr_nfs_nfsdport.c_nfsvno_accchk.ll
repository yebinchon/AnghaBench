; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_accchk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_accchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i64 }
%struct.nfsexstuff = type { i32 }
%struct.thread = type { i32 }
%struct.vattr = type { i64 }

@LK_SHARED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@VDELETE = common dso_local global i32 0, align 4
@VDELETE_CHILD = common dso_local global i32 0, align 4
@VEXPLICIT_DENY = common dso_local global i32 0, align 4
@NFSACCESS_DELETE = common dso_local global i32 0, align 4
@NFSACCCHK_NOOVERRIDE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@NFSACCCHK_ALLOWROOT = common dso_local global i32 0, align 4
@NFSACCCHK_ALLOWOWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_accchk(%struct.vnode* %0, i32 %1, %struct.ucred* %2, %struct.nfsexstuff* %3, %struct.thread* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.nfsexstuff*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.vattr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.ucred* %2, %struct.ucred** %11, align 8
  store %struct.nfsexstuff* %3, %struct.nfsexstuff** %12, align 8
  store %struct.thread* %4, %struct.thread** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %8
  %23 = load %struct.vnode*, %struct.vnode** %9, align 8
  %24 = load i32, i32* @LK_SHARED, align 4
  %25 = call i64 @NFSVOPLOCK(%struct.vnode* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @EPERM, align 4
  store i32 %28, i32* %18, align 4
  br label %185

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @VWRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %30
  %36 = load %struct.nfsexstuff*, %struct.nfsexstuff** %12, align 8
  %37 = call i64 @NFSVNO_EXRDONLY(%struct.nfsexstuff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load %struct.vnode*, %struct.vnode** %9, align 8
  %41 = getelementptr inbounds %struct.vnode, %struct.vnode* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MNT_RDONLY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39, %35
  %49 = load %struct.vnode*, %struct.vnode** %9, align 8
  %50 = getelementptr inbounds %struct.vnode, %struct.vnode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %54 [
    i32 128, label %52
    i32 130, label %52
    i32 129, label %52
  ]

52:                                               ; preds = %48, %48, %48
  %53 = load i32, i32* @EROFS, align 4
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %48, %52
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %39
  %57 = load %struct.vnode*, %struct.vnode** %9, align 8
  %58 = call i64 @VOP_IS_TEXT(%struct.vnode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %18, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @ETXTBSY, align 4
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %63, %60, %56
  br label %66

66:                                               ; preds = %65, %30
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %15, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.vnode*, %struct.vnode** %9, align 8
  %74 = call i32 @NFSVOPUNLOCK(%struct.vnode* %73, i32 0)
  br label %75

75:                                               ; preds = %72, %69
  br label %185

76:                                               ; preds = %66
  %77 = load %struct.vnode*, %struct.vnode** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.ucred*, %struct.ucred** %11, align 8
  %80 = load %struct.thread*, %struct.thread** %13, align 8
  %81 = call i32 @VOP_ACCESSX(%struct.vnode* %77, i32 %78, %struct.ucred* %79, %struct.thread* %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %133

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @VDELETE, align 4
  %87 = load i32, i32* @VDELETE_CHILD, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %133

91:                                               ; preds = %84
  %92 = load %struct.vnode*, %struct.vnode** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @VEXPLICIT_DENY, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.ucred*, %struct.ucred** %11, align 8
  %97 = load %struct.thread*, %struct.thread** %13, align 8
  %98 = call i32 @VOP_ACCESSX(%struct.vnode* %92, i32 %95, %struct.ucred* %96, %struct.thread* %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %132

101:                                              ; preds = %91
  %102 = load %struct.vnode*, %struct.vnode** %9, align 8
  %103 = getelementptr inbounds %struct.vnode, %struct.vnode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 130
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load i32, i32* @VDELETE, align 4
  %108 = load i32, i32* @VDELETE_CHILD, align 4
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %10, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* @VWRITE, align 4
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load %struct.vnode*, %struct.vnode** %9, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.ucred*, %struct.ucred** %11, align 8
  %119 = load %struct.thread*, %struct.thread** %13, align 8
  %120 = call i32 @VOP_ACCESSX(%struct.vnode* %116, i32 %117, %struct.ucred* %118, %struct.thread* %119)
  store i32 %120, i32* %18, align 4
  br label %131

121:                                              ; preds = %101
  %122 = load i32*, i32** %16, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i32, i32* @NFSACCESS_DELETE, align 4
  %126 = xor i32 %125, -1
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %126
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %121
  br label %131

131:                                              ; preds = %130, %106
  br label %132

132:                                              ; preds = %131, %91
  br label %133

133:                                              ; preds = %132, %84, %76
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @NFSACCCHK_NOOVERRIDE, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %178

137:                                              ; preds = %133
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* @EPERM, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* @EACCES, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %178

145:                                              ; preds = %141, %137
  %146 = load %struct.ucred*, %struct.ucred** %11, align 8
  %147 = getelementptr inbounds %struct.ucred, %struct.ucred* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @NFSACCCHK_ALLOWROOT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  store i32 0, i32* %18, align 4
  br label %177

156:                                              ; preds = %150, %145
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @NFSACCCHK_ALLOWOWNER, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %156
  %162 = load %struct.vnode*, %struct.vnode** %9, align 8
  %163 = load %struct.ucred*, %struct.ucred** %11, align 8
  %164 = call i32 @VOP_GETATTR(%struct.vnode* %162, %struct.vattr* %17, %struct.ucred* %163)
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* %19, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load %struct.ucred*, %struct.ucred** %11, align 8
  %169 = getelementptr inbounds %struct.ucred, %struct.ucred* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.vattr, %struct.vattr* %17, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %170, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store i32 0, i32* %18, align 4
  br label %175

175:                                              ; preds = %174, %167, %161
  br label %176

176:                                              ; preds = %175, %156
  br label %177

177:                                              ; preds = %176, %155
  br label %178

178:                                              ; preds = %177, %141, %133
  %179 = load i32, i32* %15, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load %struct.vnode*, %struct.vnode** %9, align 8
  %183 = call i32 @NFSVOPUNLOCK(%struct.vnode* %182, i32 0)
  br label %184

184:                                              ; preds = %181, %178
  br label %185

185:                                              ; preds = %184, %75, %27
  %186 = load i32, i32* %18, align 4
  %187 = call i32 @NFSEXITCODE(i32 %186)
  %188 = load i32, i32* %18, align 4
  ret i32 %188
}

declare dso_local i64 @NFSVOPLOCK(%struct.vnode*, i32) #1

declare dso_local i64 @NFSVNO_EXRDONLY(%struct.nfsexstuff*) #1

declare dso_local i64 @VOP_IS_TEXT(%struct.vnode*) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_ACCESSX(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

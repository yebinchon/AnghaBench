; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clcomsubs.c_nfsm_uiombuflist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clcomsubs.c_nfsm_uiombuflist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.uio = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [28 x i8] c"nfsm_uiotombuf: iovcnt != 1\00", align 1
@ncl_mbuf_mlen = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i64 0, align 8
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @nfsm_uiombuflist(%struct.uio* %0, i32 %1, %struct.mbuf** %2, i8** %3) #0 {
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.uio* %0, %struct.uio** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbuf** %2, %struct.mbuf*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %19 = load %struct.uio*, %struct.uio** %5, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ncl_mbuf_mlen, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 1, i32* %17, align 4
  br label %30

29:                                               ; preds = %4
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = call i32 @NFSMCLGET(%struct.mbuf* %34, i32 %35)
  br label %40

37:                                               ; preds = %30
  %38 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %39 = call i32 @NFSMGET(%struct.mbuf* %38)
  br label %40

40:                                               ; preds = %37, %33
  %41 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %42 = call i32 @mbuf_setlen(%struct.mbuf* %41, i32 0)
  %43 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %43, %struct.mbuf** %11, align 8
  store %struct.mbuf* %43, %struct.mbuf** %12, align 8
  br label %44

44:                                               ; preds = %153, %40
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %178

47:                                               ; preds = %44
  %48 = load %struct.uio*, %struct.uio** %5, align 8
  %49 = getelementptr inbounds %struct.uio, %struct.uio* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %14, align 4
  %53 = load %struct.uio*, %struct.uio** %5, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %61, %47
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %129, %63
  %66 = load i32, i32* %14, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %153

68:                                               ; preds = %65
  %69 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %70 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %68
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %78 = load i32, i32* @M_WAITOK, align 4
  %79 = call i32 @NFSMCLGET(%struct.mbuf* %77, i32 %78)
  br label %83

80:                                               ; preds = %73
  %81 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %82 = call i32 @NFSMGET(%struct.mbuf* %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %85 = call i32 @mbuf_setlen(%struct.mbuf* %84, i32 0)
  %86 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %87 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %88 = call i32 @mbuf_setnext(%struct.mbuf* %86, %struct.mbuf* %87)
  %89 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %89, %struct.mbuf** %11, align 8
  %90 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %91 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %90)
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %83, %68
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  br label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %14, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %13, align 4
  %102 = load %struct.uio*, %struct.uio** %5, align 8
  %103 = getelementptr inbounds %struct.uio, %struct.uio* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @UIO_SYSSPACE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load i8*, i8** %9, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %110 = load i32, i32* @caddr_t, align 4
  %111 = call i8* @NFSMTOD(%struct.mbuf* %109, i32 %110)
  %112 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %113 = call i32 @mbuf_len(%struct.mbuf* %112)
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @NFSBCOPY(i8* %108, i8* %115, i32 %116)
  br label %129

118:                                              ; preds = %100
  %119 = load i8*, i8** %9, align 8
  %120 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %121 = load i32, i32* @caddr_t, align 4
  %122 = call i8* @NFSMTOD(%struct.mbuf* %120, i32 %121)
  %123 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %124 = call i32 @mbuf_len(%struct.mbuf* %123)
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @copyin(i8* %119, i8* %126, i32 %127)
  br label %129

129:                                              ; preds = %118, %107
  %130 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %131 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %132 = call i32 @mbuf_len(%struct.mbuf* %131)
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i32 @mbuf_setlen(%struct.mbuf* %130, i32 %134)
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i8*, i8** %9, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %9, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.uio*, %struct.uio** %5, align 8
  %145 = getelementptr inbounds %struct.uio, %struct.uio* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.uio*, %struct.uio** %5, align 8
  %150 = getelementptr inbounds %struct.uio, %struct.uio* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %65

153:                                              ; preds = %65
  %154 = load %struct.uio*, %struct.uio** %5, align 8
  %155 = getelementptr inbounds %struct.uio, %struct.uio* %154, i32 0, i32 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %18, align 8
  %159 = load i32, i32* %16, align 4
  %160 = load i8*, i8** %18, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %18, align 8
  %163 = load i8*, i8** %18, align 8
  %164 = load %struct.uio*, %struct.uio** %5, align 8
  %165 = getelementptr inbounds %struct.uio, %struct.uio* %164, i32 0, i32 4
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  store i8* %163, i8** %167, align 8
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.uio*, %struct.uio** %5, align 8
  %170 = getelementptr inbounds %struct.uio, %struct.uio* %169, i32 0, i32 4
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %173, %168
  store i32 %174, i32* %172, align 8
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %6, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %6, align 4
  br label %44

178:                                              ; preds = %44
  %179 = load i8**, i8*** %8, align 8
  %180 = icmp ne i8** %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %178
  %182 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %183 = load i32, i32* @caddr_t, align 4
  %184 = call i8* @NFSMTOD(%struct.mbuf* %182, i32 %183)
  %185 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %186 = call i32 @mbuf_len(%struct.mbuf* %185)
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = load i8**, i8*** %8, align 8
  store i8* %188, i8** %189, align 8
  br label %190

190:                                              ; preds = %181, %178
  %191 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %192 = icmp ne %struct.mbuf** %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %195 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %194, %struct.mbuf** %195, align 8
  br label %196

196:                                              ; preds = %193, %190
  %197 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  ret %struct.mbuf* %197
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @NFSMCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @NFSMGET(%struct.mbuf*) #1

declare dso_local i32 @mbuf_setlen(%struct.mbuf*, i32) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @mbuf_setnext(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @NFSBCOPY(i8*, i8*, i32) #1

declare dso_local i8* @NFSMTOD(%struct.mbuf*, i32) #1

declare dso_local i32 @mbuf_len(%struct.mbuf*) #1

declare dso_local i32 @copyin(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
